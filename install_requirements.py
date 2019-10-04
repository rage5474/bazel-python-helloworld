from pip._internal import main as _pip3_main

if __name__ == "__main__":
    _pip3_main(["install","--upgrade","pip","--quiet","-r","requirements.txt"])