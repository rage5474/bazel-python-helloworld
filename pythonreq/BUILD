genrule(
  name = "trigger_install_requirements",
  tools = ["//pythonreq:install_requirements"],
  srcs = ["requirements.txt"],
  outs = ["dummy.txt"],
  cmd = "$(location //pythonreq:install_requirements) && touch dummy.txt && mv dummy.txt $@",
  visibility = ["//visibility:public"]
)

py_binary(
    name = "install_requirements",
    srcs = ["install_requirements.py"],
    data = ["requirements.txt"],
)
