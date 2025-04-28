echo "build"
moon build --target all,native --release


echo "native"
echo "rev_fold";
time ./target/native/release/build/rev_fold/rev_fold.exe; 
time ./target/native/release/build/rev_fold/rev_fold.exe;
time ./target/native/release/build/rev_fold/rev_fold.exe;

echo "rev_fold_array"
time ./target/native/release/build/rev_fold_array/rev_fold_array.exe; 
time ./target/native/release/build/rev_fold_array/rev_fold_array.exe; 
time ./target/native/release/build/rev_fold_array/rev_fold_array.exe;

echo "wasm-gc"
echo "rev_fold"
time moon run --target wasm-gc src/rev_fold
time moon run --target wasm-gc src/rev_fold
time moon run --target wasm-gc src/rev_fold
echo "rev_fold_array"
time moon run --target wasm-gc src/rev_fold_array
time moon run --target wasm-gc src/rev_fold_array
time moon run --target wasm-gc src/rev_fold_array


echo "wasm"
echo "rev_fold"
time moon run --target wasm src/rev_fold
time moon run --target wasm src/rev_fold
time moon run --target wasm src/rev_fold
echo "rev_fold_array"
time moon run --target wasm src/rev_fold_array
time moon run --target wasm src/rev_fold_array
time moon run --target wasm src/rev_fold_array

echo "js"
echo "rev_fold"
time moon run --target js src/rev_fold
time moon run --target js src/rev_fold
time moon run --target js src/rev_fold
echo "rev_fold_array"
time moon run --target js src/rev_fold_array
time moon run --target js src/rev_fold_array
time moon run --target js src/rev_fold_array


