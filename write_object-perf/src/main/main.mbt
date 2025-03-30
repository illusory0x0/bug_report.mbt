fn main {
  let buf = StringBuilder::new()
  let integer = 123U
  buf.write_object(integer)
  integer.output(buf)
}
