#!/bin/bash -eu

git_dir=$(mktemp -d)
git clone https://github.com/bazelbuild/rules_kotlin.git "${git_dir}"
release_dir=$(mktemp -d)
(cd "${git_dir}" && git checkout 25d4c54d379c449ef1a4e9495a183456a477fed5 && bazel build :rules_kotlin_release && tar zxf bazel-bin/rules_kotlin_release.tgz -C "${release_dir}")

bazel build helloworld --override_repository=io_bazel_rules_kotlin="${release_dir}"
