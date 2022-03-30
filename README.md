# Repro

Repro if issue with mixed Java/Kotlin compiles introduced by https://github.com/bazelbuild/rules_kotlin/pull/694

To reproduce, run `./run.sh`

Sample output:
```
ERROR: /path/to/rules_kotlin-mixed-compile-repro/helloworld/BUILD:3:15: Building helloworld/helloworld-java.jar (1 source file, 1 source jar) failed: (Exit 1): java failed: error executing command external/remotejdk11_macos/bin/java -XX:-CompactStrings '--add-exports=jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED' '--add-exports=jdk.compiler/com.sun.tools.javac.main=ALL-UNNAMED' ... (remaining 17 arguments skipped)
helloworld/Main.java:5: error: cannot find symbol
        new Dep();
            ^
  symbol:   class Dep
  location: class Main
Target //helloworld:helloworld failed to build
Use --verbose_failures to see the command lines of failed build steps.
```
