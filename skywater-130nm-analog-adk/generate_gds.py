# from shutil import copyfile
# import os 

# SKYWATER130_HOME = './'
# dirs = './gds/'
# cell_dirs = os.listdir(dirs)

# for fname in cell_dirs:
#     print('now writing file:', fname)
#     copyfile(dirs+fname, SKYWATER130_HOME+'view-standard/stdcells.gds')
from klayout import db
import logging
import argparse
from itertools import chain
import os
logger = logging.getLogger(__name__)

def main():
    parser = argparse.ArgumentParser(description='Merge GDS files.')
    parser.add_argument('-v', '--verbose', action='store_true', help='show more detailed log output')
    parser.add_argument('-o', '--output', required=True, metavar='OUT', type=str, help='Output GDS file.')
    parser.add_argument('-i', '--inputs', required=False, action='append', nargs='+', metavar='GDS', type=str,
                        help='Input GDS files.')
    parser.add_argument('--force', action='store_true', help='Allow overwriting of output file.')
    args = parser.parse_args()
    # Setup logging
    log_level = logging.INFO
    if args.verbose:
        log_level = logging.DEBUG
    logging.basicConfig(format='%(module)16s %(levelname)8s: %(message)s', level=log_level)
    # Check if output would overwrite something.
    if not args.force and os.path.exists(args.output):
        logger.error("Output file exists. Use --force to overwrite it.")
        exit(1)
    # Load GDS2
    gds_out_path = args.output
    gds_in_paths = list(chain(*args.inputs))
    layout = db.Layout()
    for f in gds_in_paths:
        logger.info("Reading GDS2: %s", f)
        layout.read(f)
    logger.info("Writing GDS2: %s", gds_out_path)
    layout.write(gds_out_path)
    # Print some stats.
    num_cells = layout.cells()
    num_files = len(gds_in_paths)
    logger.info("Merged {} cell{} from {} file{} into {}".format(
        num_cells,
        "s" if num_cells != 1 else "",
        num_files,
        "s" if num_files != 1 else "",
        gds_out_path
    ))