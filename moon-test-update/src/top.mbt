priv type InIter[A] ((A) -> Unit) -> Unit
///|
fn InIter::run[A](self : InIter[A], f : (A) -> Unit) -> Unit {
  (self._)(f)
}

///|
fn InIter::from_array[A](xs : Array[A]) -> InIter[A] {
  fn(k) { xs.each(k) }
}

///|
fn InIter::with_index[A](self : InIter[A]) -> InIter[(Int, A)] {
  let mut i = 0
  fn(k) {
    self.run(fn(x) {
      k((i, x))
      i += 1
    })
  }
}

///|
impl[A : Show] Show for InIter[A] with output(self, logger) {
  logger.write_string("[")
  self.run(fn(x) {
    logger.write_object(x)
    logger.write_string(",")
  })
  logger.write_string("]")
}

///|
test {
  let xs = ["apple", "orange", "strawberry"]
  let iter = InIter::from_array(xs).with_index()

  inspect!(iter.to_string(), content=#|[(0, "apple"),(1, "orange"),(2, "strawberry"),]
  )
  inspect!(iter) // failed to run moon test --update
}