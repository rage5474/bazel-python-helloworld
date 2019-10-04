
py_binary(
    name = "install_requirements",
    srcs = ["install_requirements.py"],
    data = ["requirements.txt"]
)

py_test(
    name = "test_main",
    srcs = ["test_main.py"],
    deps = ["//:install_requirements"],
)

