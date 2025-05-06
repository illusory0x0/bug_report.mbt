fn id[A](x : A) -> A { x }

fn main {
  let x : Ref[Int] = Ref::new(0)
  let xs : Array[Int] = [1,2]
  id(x) |> ignore

  id(xs) |> ignore
}