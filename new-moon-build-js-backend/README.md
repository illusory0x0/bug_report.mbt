
## OS 

```
Darwin arm64
```

## moonbit toolchain version

```
moon 0.1.20251030 (cf54fca 2025-10-30) ~/.moon/bin/moon
moonc v0.6.30+07d9d2445 (2025-10-30) ~/.moon/bin/moonc
moonrun 0.1.20251030 (cf54fca 2025-10-30) ~/.moon/bin/moonrun
moon-pilot 0.0.1-df92511 (2025-10-31) ~/.moon/bin/moon-pilot
```

## step to reproduce issues 

### expected behavior

```bash 
moon build --target js
cat target/js/release/build/bug_report.js

## below is expected output

# function illusory0x0$bug_report$$deactivate() {}
# function illusory0x0$bug_report$$activate(context) {}
# exports.deactivate = illusory0x0$bug_report$$deactivate;
# exports.activate = illusory0x0$bug_report$$activate;
```

### actual behavior
```bash
NEW_MOON=1 moon build --target js
cat target/js/release/build/bug_report.js
## output nothing, bug_report.js is empty file
```
