load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "python_version",
    urls = ["https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz"],
    strip_prefix = "Python-3.6.3",
    build_file_content = """
genrule(
    name = "build_python",
    srcs = glob(["**"]),
    outs = ["python"],
    cmd = "./external/python_version/configure && make -j4 && cp python $@",
    visibility = ["//visibility:public"],
)""",
)

