///|
extern "c" fn ffi_register_callback(
  call : FuncRef[(() -> Unit) -> Unit],
  closure : () -> Unit
) = "register_callback"

///|
fn register_callback(closure : () -> Unit) -> Unit {
  ffi_register_callback(
    fn(f) { f() }, // moonc know how to consume `closure`
    closure,
  )
}


fn ffi() -> Unit {
  let mut i = 0
  fn f() {
    i |> ignore
  }
  register_callback(f)
}
fn normal() -> Unit {
  let mut i = 0
  fn f() {
    i |> ignore
  }
  f()
  f()
  f()
}


///|
fn main {
  ffi()
  normal()
}