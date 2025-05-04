fn main {
  let xs = Array::makei(10,fn { x => Ref::new(x)})

  xs.map(fn { x => x.val }) |> ignore
  // Array[Ref[Int]]::map is the same as Array[Array[Int]] in reprentation.

  let ys = Array::makei(10, fn { x => [x]})

  ys.map(fn { x => x[0]}) |> ignore

}