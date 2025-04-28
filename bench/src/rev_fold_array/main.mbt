fn main {
  let xs = Array::makei(2000,fn { x => x}) |> @immut/list.from_array

  for i in 0..<10000 {
    let ys = xs.to_array()
    ys.rev_fold(init=0,Add::op_add) |> ignore
  }
}
