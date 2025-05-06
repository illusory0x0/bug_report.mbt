
enum ErrorCode {
  Success
  Failure
}


type! MyError ErrorCode

test "enum" {
  try {

    raise MyError(Failure)
  } catch {
    _ => () 
  }
}

type ErrorCode_newtype Int 
type! MyError_newtype ErrorCode_newtype

test "newtype" {
  try {
    raise MyError_newtype(ErrorCode_newtype(0))
  } catch {
    _ => () 
  }
}


// implwfwfew