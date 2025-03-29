test (t : @test.T) {
  t.writeln("hello")
  t.snapshot!(filename="A.txt")
  t.snapshot!(filename="B.txt")
}