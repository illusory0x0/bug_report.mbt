struct Cycle {
  mut val : Cycle?
}

///|
test {
  let x = Cycle::{ val: None }
  x.val = Some(x)
  x |> ignore
}

fn main {
  let x = Cycle::{ val: None }
  x.val = Some(x)
  x |> ignore

}
