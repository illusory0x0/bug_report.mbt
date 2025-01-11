
test {
  let f : () -> Int = fn() { 0 }
  let f : () -> Unit = f |> @coerce.unsafe_coerce
  let f : () -> Int = f |> @coerce.unsafe_coerce
  inspect!(f(), content="0")
}
