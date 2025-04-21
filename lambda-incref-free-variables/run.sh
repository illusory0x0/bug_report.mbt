/usr/bin/cc -o ./target/native/release/build/stub.o -I/home/illu/.moon/include -L/home/illu/.moon/lib -c -fwrapv -fno-strict-aliasing -O2 ./src/stub.c
moonc build-package ./src/top.mbt -w -A -o ./target/native/release/build/hello.core -pkg username/hello -is-main -std-path /home/illu/.moon/lib/core/target/native/release/bundle -pkg-sources username/hello:./src -target native
moonc link-core /home/illu/.moon/lib/core/target/native/release/bundle/core.core ./target/native/release/build/hello.core -main username/hello -o ./target/native/release/build/hello.c -pkg-config-path ./src/moon.pkg.json -pkg-sources username/hello:./src -pkg-sources moonbitlang/core:/home/illu/.moon/lib/core -target native
/usr/bin/cc -o ./target/native/release/build/runtime.o -I/home/illu/.moon/include -L/home/illu/.moon/lib -g -c -fwrapv -fno-strict-aliasing -O2 /home/illu/.moon/lib/runtime.c
/usr/bin/ar -r -c -s ./target/native/release/build/libhello.a ./target/native/release/build/stub.o
/usr/bin/cc -o ./target/native/release/build/hello.exe -I/home/illu/.moon/include -L/home/illu/.moon/lib ./target/native/release/build/hello.c ./target/native/release/build/runtime.o ./target/native/release/build/libhello.a -lm -fsanitize=address
./target/native/release/build/hello.exe
