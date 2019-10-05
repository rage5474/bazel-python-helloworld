"""This is only an example."""
import sys

def test_python_version():
    """This tests if python version is 3.7.4"""

    assert sys.version.split()[0] == "3.7.4"

if __name__ == "__main__":
    import pytest
    sys.exit(pytest.main(["-s",__file__]))
