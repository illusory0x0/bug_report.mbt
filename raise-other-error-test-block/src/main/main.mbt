///|
enum ErrorCode {
  Success
  Failure
}

///|
type! MyError ErrorCode

///|
type ErrorCode_newtype Int

///|
type! MyError_newtype ErrorCode_newtype

///|
fn main {
  try {
    raise MyError(Failure)
  } catch {
    _ => ()
  }
  try {
    raise MyError_newtype(ErrorCode_newtype(0))
  } catch {
    _ => ()
  }
  println("done")
}
