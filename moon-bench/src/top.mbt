pub enum T[A] {
  Empty
  More(A, mut tail~ : T[A])
} derive(Eq)


pub fn from_iter_v1[A](iter : Iter[A]) -> T[A] {
  let mut res = Empty
  let mut ptr = Empty
  for x in iter {
    match (res, ptr) {
      (Empty, _) => {
        res = More(x, tail=Empty)
        ptr = res
      }
      (More(_), More(_) as ptr_) => {
        ptr_.tail = More(x, tail=Empty)
        ptr = ptr_.tail
      }
      (_, _) => abort("unreachable")
    }
  }
  res
}


pub fn from_iter_v2[A](iter : Iter[A]) -> T[A] {
  iter.fold(init=Empty, fn(acc, e) { More(e, tail=acc) }).reverse_inplace()

}

fn reverse_inplace[A](self : T[A]) -> T[A] {
  match self {
    Empty | More(_, tail=Empty) => self
    More(head, tail~) =>
      loop More(head, tail=Empty), tail {
        result, Empty => result
        result, More(_, tail=xs) as new_result => {
          new_result.tail = result
          continue new_result, xs
        }
      }
  }
}


test (b : @bench.T) {
  let xs = Int::until(0,1000)

  b.bench(name="v1",fn() { b.keep(from_iter_v1(xs)) })
  b.bench(name="v2",fn() { b.keep(from_iter_v2(xs)) })
}
