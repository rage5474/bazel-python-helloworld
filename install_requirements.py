import pip
import sys

def install(package):
    print(sys.version)
    if hasattr(pip, '_internal'):
        pip._internal.main(['install', package])
    else:
        pip.main(['install', package])


# Example
if __name__ == '__main__':
    install('pytest')