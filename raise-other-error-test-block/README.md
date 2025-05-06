# use newtype or enum defined `Error` type can't use in test block

## Step to reproduce

```bash
moon test 
```

```
llu@illusory0x0:~/dev.mbt/bug_report.mbt/raise-other-error-test-block$ moon test 
failed: moonc build-package -error-format json /home/illu/dev.mbt/bug_report.mbt/raise-other-error-test-block/src/lib/top.mbt /home/illu/dev.mbt/bug_report.mbt/raise-other-error-test-block/target/wasm-gc/debug/test/lib/__generated_driver_for_internal_test.mbt -w -A -o /home/illu/dev.mbt/bug_report.mbt/raise-other-error-test-block/target/wasm-gc/debug/test/lib/lib.internal_test.core -pkg username/hello/lib -is-main -std-path /home/illu/.moon/lib/core/target/wasm-gc/release/bundle -pkg-sources username/hello/lib:/home/illu/dev.mbt/bug_report.mbt/raise-other-error-test-block/src/lib -target wasm-gc -g -O0 -no-mi
Error: [4014]
    ╭─[/home/illu/dev.mbt/bug_report.mbt/raise-other-error-test-block/target/wasm-gc/debug/test/./lib/__generated_driver_for_internal_test.mbt:45:9]
    │
 45 │         Failure(e) | InspectError(e) | SnapshotError(e) => {
    │         ─────┬────  
    │              ╰────── Constr Type Mismatch(constructor Failure)
        has type : ErrorCode
        wanted   : Error
────╯
Error: [4080]
    ╭─[/home/illu/dev.mbt/bug_report.mbt/raise-other-error-test-block/target/wasm-gc/debug/test/./lib/__generated_driver_for_internal_test.mbt:45:9]
    │
 45 │         Failure(e) | InspectError(e) | SnapshotError(e) => {
    │         ─────┬────  
    │              ╰────── The constructor Failure requires 0 arguments, but is given 1 arguments.
────╯
error: failed when testing

```


## moon run is available

```
moon run src/main
```