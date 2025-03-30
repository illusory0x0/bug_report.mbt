```c
int32_t $$moonbitlang$core$builtin$StringBuilder$$write_object$7c$UInt$7c$(
  struct $$moonbitlang$core$builtin$StringBuilder* self$67,
  uint32_t obj$66
) {
  struct $$moonbitlang$core$builtin$Logger* _tmp$172 =
    (struct $$moonbitlang$core$builtin$Logger*)moonbit_malloc(
      sizeof(
        struct $$moonbitlang$core$builtin$StringBuilder$as_$moonbitlang$core$builtin$Logger
      )
    );
  Moonbit_object_header(_tmp$172)->meta
  = Moonbit_make_regular_object_header(
    offsetof(
      struct $$moonbitlang$core$builtin$StringBuilder$as_$moonbitlang$core$builtin$Logger,
        $0
    )
    >> 2,
      1,
      0
  );
  _tmp$172->$method_0
  = &$$moonbitlang$core$builtin$Logger$$$moonbitlang$core$builtin$StringBuilder$$write_string$dyncall_as_$moonbitlang$core$builtin$Logger;
  _tmp$172->$method_1
  = &$$moonbitlang$core$builtin$Logger$$$moonbitlang$core$builtin$StringBuilder$$write_substring$dyncall_as_$moonbitlang$core$builtin$Logger;
  _tmp$172->$method_2
  = &$$moonbitlang$core$builtin$Logger$$$default_impl$$write_sub_string$7c$$moonbitlang$core$builtin$StringBuilder$7c$$dyncall_as_$moonbitlang$core$builtin$Logger;
  _tmp$172->$method_3
  = &$$moonbitlang$core$builtin$Logger$$$moonbitlang$core$builtin$StringBuilder$$write_char$dyncall_as_$moonbitlang$core$builtin$Logger;
  ((struct $$moonbitlang$core$builtin$StringBuilder$as_$moonbitlang$core$builtin$Logger*)_tmp$172)->$0
  = self$67;
  $$moonbitlang$core$builtin$Show$$UInt$$output(obj$66, _tmp$172);
  return 0;
} 
```