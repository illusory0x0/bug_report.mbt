pub fn test_closure(f : () -> Unit) = "global" "test_closure"

pub fn entry() -> Unit {
  test_closure(fn () {
    println("test_closure")
  })
}