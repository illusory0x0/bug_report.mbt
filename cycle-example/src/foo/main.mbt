///|
struct A {
  mut val : B?
}

///|
struct B {
  val : A?
}

///|
fn foo(a : A) -> B {
  let b = B::{ val: Some(a) }
  a.val = Some(b)
  b
}

///|
fn main {
  let a = A::{ val: None }
  let b = foo(a)
  println(a.val.is_empty()) // asan doesn't report errors
  a |> ignore
  b |> ignore
}
