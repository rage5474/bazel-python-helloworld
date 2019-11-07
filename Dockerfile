FROM gitpod/workspace-full:latest

RUN wget -q https://github.com/bazelbuild/bazel/releases/download/0.29.1/bazel-0.29.1-installer-linux-x86_64.sh \
  && chmod +x bazel-0.27.1-installer-linux-x86_64.sh \
  && ./bazel-0.27.1-installer-linux-x86_64.sh --user \
  && echo 'export PATH="$PATH:$HOME/bin"' >> ~/.bashrc

USER root

RUN apt-get update \
  && apt-get install -y openjdk-8-jdk \
  && rm -rf /var/lib/apt/lists/*
