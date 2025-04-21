# Produce step 

```bash
moon clean 

moon run src --target native --dry-run > run.sh 

# use editor remove libmoonbitrun.o in run.sh
# https://github.com/moonbitlang/moon/issues/755


mkdir target/native/release/build -p 
bash run.sh 


```



# Analysis


## Normal Case 

moonc insert `moonbit_incref` outside the function `f`, but in 
`void register_callback(void (*call)(moonbit_closure), moonbit_closure closure)` this FFI function implentation 
**doesn't** do that.


```c
int32_t $username$hello$normal() {
  struct $Ref$3c$Int$3e$* i$6 =
    (struct $Ref$3c$Int$3e$*)moonbit_malloc(sizeof(struct $Ref$3c$Int$3e$));
  Moonbit_object_header(i$6)->meta
  = Moonbit_make_regular_object_header(
    sizeof(struct $Ref$3c$Int$3e$) >> 2, 0, 0
  );
  i$6->$0 = 0;
  moonbit_incref(i$6); // <<<<<<<<<<<<<<<<
  $username$hello$normal$f$7c$2(i$6);
  moonbit_incref(i$6); // <<<<<<<<<<<<<<<<
  $username$hello$normal$f$7c$2(i$6);
  $username$hello$normal$f$7c$2(i$6);
  return 0;
}
```


## FFI Case 


```c
int32_t $username$hello$ffi() {
  struct $Ref$3c$Int$3e$* i$3 =
    (struct $Ref$3c$Int$3e$*)moonbit_malloc(sizeof(struct $Ref$3c$Int$3e$));
  struct $$username$hello$ffi$f$fn$2$2d$cap* _closure$19;
  struct $$3c$$3e$$3d$$3e$Unit* f$4;
  Moonbit_object_header(i$3)->meta
  = Moonbit_make_regular_object_header(
    sizeof(struct $Ref$3c$Int$3e$) >> 2, 0, 0
  );
  i$3->$0 = 0;
  _closure$19
  = (struct $$username$hello$ffi$f$fn$2$2d$cap*)moonbit_malloc(
      sizeof(struct $$username$hello$ffi$f$fn$2$2d$cap)
    );
  Moonbit_object_header(_closure$19)->meta
  = Moonbit_make_regular_object_header(
    offsetof(struct $$username$hello$ffi$f$fn$2$2d$cap, $0) >> 2, 1, 0
  );
  _closure$19->code = &$$username$hello$ffi$f$fn$2;
  _closure$19->$0 = i$3;
  f$4 = (struct $$3c$$3e$$3d$$3e$Unit*)_closure$19;
  $username$hello$register_callback(f$4);
  return 0;
} 
```