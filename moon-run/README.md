# moon run no cache

```bash 
$ moon run --target native  src/foo
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/bar/stub.c:1:2: warning: #warning "build bar" [-Wcpp]
    1 | #warning "build bar"
      |  ^~~~~~~
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/foo/stub.c:1:2: warning: #warning "build foo" [-Wcpp]
    1 | #warning "build foo"
      |  ^~~~~~~
foo
$ moon run --target native  src/foo
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/bar/stub.c:1:2: warning: #warning "build bar" [-Wcpp]
    1 | #warning "build bar"
      |  ^~~~~~~
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/foo/stub.c:1:2: warning: #warning "build foo" [-Wcpp]
    1 | #warning "build foo"
      |  ^~~~~~~
foo

```

# moon run, build irrelevance


```bash
$ moon run --target native  src/foo/
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/bar/stub.c:1:2: warning: #warning "build bar" [-Wcpp]
    1 | #warning "build bar"
      |  ^~~~~~~
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/foo/stub.c:1:2: warning: #warning "build foo" [-Wcpp]
    1 | #warning "build foo"
      |  ^~~~~~~
foo
$ moon run --target native  src/bar
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/bar/stub.c:1:2: warning: #warning "build bar" [-Wcpp]
    1 | #warning "build bar"
      |  ^~~~~~~
/home/illu/dev.mbt/bug_report.mbt/moon-run/src/foo/stub.c:1:2: warning: #warning "build foo" [-Wcpp]
    1 | #warning "build foo"
      |  ^~~~~~~
bar
```