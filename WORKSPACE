local_repository(
    name = "io_bazel_rules_kotlin",
    path = "/point/to/rules_kotlin/release/at/25d4c54d379c449ef1a4e9495a183456a477fed5",
)

load("@io_bazel_rules_kotlin//kotlin:repositories.bzl", "kotlin_repositories")
kotlin_repositories()

load("@io_bazel_rules_kotlin//kotlin:core.bzl", "kt_register_toolchains")
kt_register_toolchains()
