(module binary
  "\00\61\73\6d\01\00\00\00\01\b6\80\80\80\00\0a\60"
  "\00\01\7f\60\00\01\7e\60\00\01\7d\60\00\01\7c\60"
  "\01\7f\01\7f\60\01\7e\01\7e\60\01\7d\01\7d\60\01"
  "\7c\01\7c\60\05\7e\7d\7c\7f\7f\00\60\05\7e\7d\7c"
  "\7f\7f\01\7c\03\8b\80\80\80\00\0a\00\01\02\03\04"
  "\05\06\07\08\09\07\9d\81\80\80\00\0a\0e\74\79\70"
  "\65\2d\6c\6f\63\61\6c\2d\69\33\32\00\00\0e\74\79"
  "\70\65\2d\6c\6f\63\61\6c\2d\69\36\34\00\01\0e\74"
  "\79\70\65\2d\6c\6f\63\61\6c\2d\66\33\32\00\02\0e"
  "\74\79\70\65\2d\6c\6f\63\61\6c\2d\66\36\34\00\03"
  "\0e\74\79\70\65\2d\70\61\72\61\6d\2d\69\33\32\00"
  "\04\0e\74\79\70\65\2d\70\61\72\61\6d\2d\69\36\34"
  "\00\05\0e\74\79\70\65\2d\70\61\72\61\6d\2d\66\33"
  "\32\00\06\0e\74\79\70\65\2d\70\61\72\61\6d\2d\66"
  "\36\34\00\07\0a\74\79\70\65\2d\6d\69\78\65\64\00"
  "\08\04\72\65\61\64\00\09\0a\c6\81\80\80\00\0a\86"
  "\80\80\80\00\01\01\7f\20\00\0b\86\80\80\80\00\01"
  "\01\7e\20\00\0b\86\80\80\80\00\01\01\7d\20\00\0b"
  "\86\80\80\80\00\01\01\7c\20\00\0b\84\80\80\80\00"
  "\00\20\00\0b\84\80\80\80\00\00\20\00\0b\84\80\80"
  "\80\00\00\20\00\0b\84\80\80\80\00\00\20\00\0b\ac"
  "\80\80\80\00\03\01\7d\02\7e\01\7c\20\00\50\1a\20"
  "\01\8c\1a\20\02\9a\1a\20\03\45\1a\20\04\45\1a\20"
  "\05\8c\1a\20\06\50\1a\20\07\50\1a\20\08\9a\1a\0b"
  "\bf\80\80\80\00\03\01\7d\02\7e\01\7c\43\00\00\b0"
  "\40\21\05\42\06\21\06\44\00\00\00\00\00\00\20\40"
  "\21\08\20\00\ba\20\01\bb\20\02\20\03\b8\20\04\b7"
  "\20\05\bb\20\06\ba\20\07\ba\20\08\a0\a0\a0\a0\a0"
  "\a0\a0\a0\0b"
)
(assert_return (invoke "type-local-i32") (i32.const 0))
(assert_return (invoke "type-local-i64") (i64.const 0))
(assert_return (invoke "type-local-f32") (f32.const 0.))
(assert_return (invoke "type-local-f64") (f64.const 0.))
(assert_return (invoke "type-param-i32" (i32.const 2)) (i32.const 2))
(assert_return (invoke "type-param-i64" (i64.const 3)) (i64.const 3))
(assert_return
  (invoke "type-param-f32" (f32.const 4.40000009537))
  (f32.const 4.40000009537)
)
(assert_return (invoke "type-param-f64" (f64.const 5.5)) (f64.const 5.5))
(assert_return
  (invoke "type-mixed"
    (i64.const 1)
    (f32.const 2.20000004768)
    (f64.const 3.3)
    (i32.const 4)
    (i32.const 5)
  )
)
(assert_return
  (invoke "read"
    (i64.const 1)
    (f32.const 2.)
    (f64.const 3.3)
    (i32.const 4)
    (i32.const 5)
  )
  (f64.const 34.8)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8c\80\80\80"
    "\00\01\86\80\80\80\00\01\01\7f\20\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8d\80\80\80\00"
    "\01\87\80\80\80\00\01\01\7d\20\00\45\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\02\01\7c\01\7e\20\01\9a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
    "\01\7f\01\7e\03\82\80\80\80\00\01\00\0a\8a\80\80"
    "\80\00\01\84\80\80\80\00\00\20\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\01\7d\00\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\20\00\45\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
    "\02\7c\7e\00\03\82\80\80\80\00\01\00\0a\8b\80\80"
    "\80\00\01\85\80\80\80\00\00\20\01\9a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8e\80\80\80\00"
    "\01\88\80\80\80\00\02\01\7f\01\7e\20\03\0b"
  )
  "unknown local"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\02\01\7f\01\7e\20\f7\a4\ea\06"
    "\0b"
  )
  "unknown local"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
    "\02\7f\7e\00\03\82\80\80\80\00\01\00\0a\8a\80\80"
    "\80\00\01\84\80\80\80\00\00\20\02\0b"
  )
  "unknown local"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\92\80\80\80\00"
    "\01\8c\80\80\80\00\02\01\7f\01\7e\20\f7\f2\ce\d4"
    "\02\0b"
  )
  "unknown local"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\01\7f\00\03\82\80\80\80\00\01\00\0a\8e\80\80\80"
    "\00\01\88\80\80\80\00\02\01\7f\01\7e\20\03\0b"
  )
  "unknown local"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\01\7e\00\03\82\80\80\80\00\01\00\0a\91\80\80\80"
    "\00\01\8b\80\80\80\00\02\01\7f\01\7e\20\f7\a8\99"
    "\66\0b"
  )
  "unknown local"
)
