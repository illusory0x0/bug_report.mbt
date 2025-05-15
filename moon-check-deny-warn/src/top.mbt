priv type MyType Int

fn op_equal(self : MyType, other : MyType) -> Bool {
  self._ == other._
}

test {
  // `==` will call `Eq::op_equal`
  println(MyType(1) == MyType(2))
}