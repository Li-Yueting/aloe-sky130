def run_test(results_folder, groups, task, test):
    env_vars = os.environ.copy()
    env_vars['GROUP'] = "mobilebert"
    env_vars['SIMS'] = groups
    env_vars['TASK'] = task
    env_vars['TESTS'] = test

    stdout_file = open(f'{results_folder}/{test}.log', 'w')
    stderr_file = open(f'{results_folder}/{test}.out', 'w')

    sim_process = subprocess.Popen(
        './build/TestRunner',
        env=env_vars,
        stdout=stdout_file,
        stderr=stderr_file
    )

    sim_process.communicate()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Finetune a transformers model on a Text Classification task")
    parser.add_argument(
        "--datapath",
        type=str,
        default=None,
        help="Path to MobileBERT test data.",
    )
    parser.add_argument(
        "--task",
        type=str,
        default="forward",
        help="Group of tests to run.",
    )
    parser.add_argument(
        "--groups",
        type=str,
        default="customposit,universal,fp32,accelerator",
        help="Models to run the tests.",
    )
    args = parser.parse_args()

    # Create directory with current time
    results_folder = 'logs/' + datetime.datetime.now().strftime("%Y_%m_%d_%H_%M_%S")
    os.makedirs(results_folder)

    # Create pool of multiprocessors
    pool = mp.Pool(32)

    tests = None
    if args.task == "forward":
        tests = inference_tests
    elif args.task == "backward":
        tests = backprop_tests
    elif args.task == "gradient":
        tests = gradient_tests
    else:
        raise SystemError("Unknown task: ", task)

    for test in tests:
        pool.apply_async(run_test, (results_folder, args.groups, args.task, test))

    pool.close()
    pool.join()