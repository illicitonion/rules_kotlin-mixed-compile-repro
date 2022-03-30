load("@io_bazel_rules_kotlin//kotlin:jvm.bzl", "kt_jvm_library")

kt_jvm_library(
    name = "helloworld",
    srcs = ["Main.java", "dep.kt"],
    deps = [
        # This jar is unused, but excluding it the problem doesn't repro.
        ":javax_inject",
    ],
)

java_import(
    name = "javax_inject",
    # From https://repo1.maven.org/maven2/javax/inject/javax.inject/1/javax.inject-1.jar
    jars = ["javax.inject-1.jar"],
)
