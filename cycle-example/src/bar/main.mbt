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
  let b = B::{ val: Some(a) } // manually inline
  a.val = Some(b)             // manually inline
  println(a.val.is_empty())   // memory leak
  a |> ignore
  b |> ignore
}
