py_test(
    name = "test_main",
    srcs = ["test_main.py"],
    data = [":trigger_install_requirements"],
)

genrule(
  name = "trigger_install_requirements",
  tools = [":install_requirements"],
  srcs = ["requirements.txt"],
  outs = ["dummy.txt"],
  cmd = "$(location :install_requirements) && touch dummy.txt && mv dummy.txt $@"
)

py_binary(
    name = "install_requirements",
    srcs = ["install_requirements.py"],
    data = ["requirements.txt"],
    visibility = ["//visibility:public"],
)
