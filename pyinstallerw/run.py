import os
import os.path
import sys

from PyInstaller.__main__ import run


# Workaround, because bazel links python in cache
# but not libs
python_libs = os.path.dirname(os.readlink(sys.executable).replace('bin','lib'))
os.environ['LD_LIBRARY_PATH'] = python_libs

# Add complete bazel sys.path to pyinstaller
for next_path_item in sys.path:
        sys.argv.append('-p')
        sys.argv.append(next_path_item)

# create one file only
sys.argv.append('--onefile')

# Program code entry point
sys.argv.append('modules/hello/src/hello.py')

run()
