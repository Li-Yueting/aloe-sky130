import os
import sys
import glob
import fnmatch
import subprocess
import natural_sort

#----------------------------------------------------------------------------

def usage():
    print('')
    print('Usage:')
    print('    create_gds_library <destlibdir> <destlib> <startup_script> ')
    print('             [-compile-only] [-excludelist="file1,file2,..."] [-keep]')
    print('')
    print('Create a single GDS library from a set of individual GDS files.')
    print('')
    print('where:')
    print('    <destlibdir>      is the directory containing the individual GDS files')
    print('    <destlib>         is the root name of the library file')
    print('    <startup_script>  is the full path to a magic startup script')
    print('    -compile-only     removes the indidual files if specified')
    print('    -excludelist=     is a comma-separated list of files to ignore')
    print('    -keep             keep the Tcl script used to generate the library')
    print('')

#----------------------------------------------------------------------------

def create_gds_library(destlibdir, destlib, startup_script, do_compile_only=False, excludelist=[], keep=False):

    # destlib should not have a file extension
    destlibroot = os.path.splitext(destlib)[0]

    alllibname = destlibdir + '/' + destlibroot + '.gds'
    if os.path.isfile(alllibname):
        os.remove(alllibname)

    # If file "filelist.txt" exists in the directory, get the list of files from it
    if os.path.exists(destlibdir + '/filelist.txt'):
        with open(destlibdir + '/filelist.txt', 'r') as ifile:
            rlist = ifile.read().splitlines()
            glist = []
            for rfile in rlist:
                glist.append(destlibdir + '/' + rfile)
    else:
        glist = glob.glob(destlibdir + '/*.gds')
        glist.extend(glob.glob(destlibdir + '/*.gdsii'))
        glist.extend(glob.glob(destlibdir + '/*.gds2'))
        glist = natural_sort.natural_sort(glist)

    if alllibname in glist:
        glist.remove(alllibname)

    # Create exclude list with glob-style matching using fnmatch
    if len(glist) > 0:
        glistnames = list(os.path.split(item)[1] for item in glist)
        notglist = []
        for exclude in excludelist:
            notglist.extend(fnmatch.filter(glistnames, exclude))

        # Apply exclude list
        if len(notglist) > 0:
            for file in glist[:]:
                if os.path.split(file)[1] in notglist:
                    glist.remove(file)

    if len(glist) > 1:
        print('New file is:  ' + alllibname)

        if os.path.isfile(startup_script):
            # If the symbolic link exists, remove it.
            if os.path.isfile(destlibdir + '/.magicrc'):
                os.remove(destlibdir + '/.magicrc')
            os.symlink(startup_script, destlibdir + '/.magicrc')

        # A GDS library is binary and requires handling in Magic
        print('Creating magic generation script to generate GDS library.') 
        print('***************')
        print(destlibdir + '/generate_magic.tcl')
        with open(destlibdir + '/generate_magic.tcl', 'w') as ofile:
            print('#!/usr/bin/env wish', file=ofile)
            print('#--------------------------------------------', file=ofile)
            print('# Script to generate .gds library from files   ', file=ofile)
            print('#--------------------------------------------', file=ofile)
            print('drc off', file=ofile)
            print('locking off', file=ofile)
            print('gds readonly true', file=ofile)
            print('gds flatten true', file=ofile)
            print('gds rescale false', file=ofile)
            print('tech unlock *', file=ofile)

            for gdsfile in glist:
                print('gds read ' + gdsfile, file=ofile)

            print('puts stdout "Creating cell ' + destlibroot + '"', file=ofile)
            print('load ' + destlibroot, file=ofile)
            print('puts stdout "Adding cells to library"', file=ofile)
            print('box values 0 0 0 0', file=ofile)
            for gdsfile in glist:
                gdsroot = os.path.split(gdsfile)[1]
                gdsname = os.path.splitext(gdsroot)[0]
                print('getcell ' + gdsname, file=ofile)
                # Could properly make space for the cell here. . . 
                print('box move e 200', file=ofile)
                                
            print('puts stdout "Writing GDS library ' + destlibroot + '"', file=ofile)
            print('gds library true', file=ofile)
            print('gds write ' + destlibroot, file=ofile)
            print('puts stdout "Done."', file=ofile)
            print('quit -noprompt', file=ofile)

        # Run magic to read in the individual GDS files and
        # write out the consolidated GDS library

        print('Running magic to create GDS library.')
        sys.stdout.flush()

        mproc = subprocess.run(['magic', '-dnull', '-noconsole',
			destlibdir + '/generate_magic.tcl'],
			stdin = subprocess.DEVNULL,
			stdout = subprocess.PIPE,
			stderr = subprocess.PIPE, cwd = destlibdir,
			universal_newlines = True)

        if mproc.stdout:
            for line in mproc.stdout.splitlines():
                print(line)
        if mproc.stderr:
            print('Error message output from magic:')
            for line in mproc.stderr.splitlines():
                print(line)
        if mproc.returncode != 0:
            print('ERROR:  Magic exited with status ' + str(mproc.returncode))
        if do_compile_only == True:
            print('Compile-only:  Removing individual GDS files')
            for gfile in glist:
                if os.path.isfile(gfile):
                    os.remove(gfile)
        if not keep:
            os.remove(destlibdir + '/generate_magic.tcl')
    else:
        print('Only one file (' + str(glist) + ');  ignoring "compile" option.')


#----------------------------------------------------------------------------
if __name__ == '__main__':
    destlibdir = os.path.abspath('./outputs/stem-cell-library/gds')
    destlib =  os.path.abspath('./outputs/stem-cell-library/view-standard/stdcells.gds') 
    startup_script =  os.path.abspath('./.magicrc')
    do_compile_only = False
    keep = False
    excludelist = []
    command_str = 'rm '+ destlibdir + '/.magicrc'
    os.system(command_str)
    create_gds_library(destlibdir, destlib, startup_script, do_compile_only, excludelist, keep)
    print('Done.')
    print('****************************************************************')
    print('Merging individual files into view-standard/stdcells.*')
    for fname in os.listdir(destlibdir):
        if fname.endswith('gds'):
            print("now merging file:", './gds/'+fname)
    os.system(command_str)







