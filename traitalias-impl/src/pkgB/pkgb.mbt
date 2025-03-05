type MyInt Int 

traitalias A = @pkgA.A 

impl A for MyInt with a(self) {

}
test {
  let x : MyInt = 1
}