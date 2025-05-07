type! MyError Int 

enum ErrorCode {
  MyError 
}

test {
  let e : Error = MyError::MyError(1)
  match e {
    MyError(_) => () // ambiguous
    _ => ()
  }
}

test {
  let e : MyError = MyError::MyError(1)
  match e {
    MyError(_) => () // valid
    _ => ()
  }
}