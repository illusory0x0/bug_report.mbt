#include <moonbit.h>

typedef void* moonbit_closure;

// `call` indicates how to consume `closure`
void register_callback(void (*call)(moonbit_closure), moonbit_closure closure) {
  call(closure); // call closure directly
  call(closure); // WARNING!!!!!, free variables captured by closure has been destroy.
  moonbit_decref(closure); // if doesn't store this closure, then need use `moonbit_decref` to release resources
} 
