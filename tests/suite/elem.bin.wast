(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\82\80\80\80\00\01\00\04\84\80\80\80\00"
  "\01\70\00\0a\09\87\80\80\80\00\01\00\41\00\0b\01"
  "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\82\80\80\80\00\01\00\04\84\80\80\80\00"
  "\01\70\00\0a\09\87\80\80\80\00\01\00\41\09\0b\01"
  "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\85\80\80\80\00\04\00\00\00\00\04\84"
  "\80\80\80\00\01\70\00\0a\07\93\80\80\80\00\02\06"
  "\63\61\6c\6c\2d\37\00\02\06\63\61\6c\6c\2d\39\00"
  "\03\09\8d\80\80\80\00\02\00\41\07\0b\01\00\00\41"
  "\09\0b\01\01\0a\ad\80\80\80\00\04\85\80\80\80\00"
  "\00\41\c1\00\0b\85\80\80\80\00\00\41\c2\00\0b\87"
  "\80\80\80\00\00\41\07\11\00\00\0b\87\80\80\80\00"
  "\00\41\09\11\00\00\0b"
)
(assert_return (invoke "call-7") (i32.const 65))
(assert_return (invoke "call-9") (i32.const 66))
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\84\80\80\80\00\03\00\00\00\04\84\80"
  "\80\80\00\01\70\00\0a\07\9c\80\80\80\00\01\18\63"
  "\61\6c\6c\2d\6f\76\65\72\77\72\69\74\74\65\6e\2d"
  "\65\6c\65\6d\65\6e\74\00\02\09\8d\80\80\80\00\02"
  "\00\41\09\0b\01\00\00\41\09\0b\01\01\0a\a1\80\80"
  "\80\00\03\85\80\80\80\00\00\41\c1\00\0b\85\80\80"
  "\80\00\00\41\c2\00\0b\87\80\80\80\00\00\41\09\11"
  "\00\00\0b"
)
(assert_return (invoke "call-overwritten-element") (i32.const 66))
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\04\84\80\80\80\00"
    "\01\70\00\0a\09\87\80\80\80\00\01\00\41\0a\0b\01"
    "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\04\85\80\80\80\00"
    "\01\70\01\0a\14\09\87\80\80\80\00\01\00\41\0a\0b"
    "\01\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\04\84\80\80\80\00"
    "\01\70\00\0a\09\87\80\80\80\00\01\00\41\7f\0b\01"
    "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\04\84\80\80\80\00"
    "\01\70\00\0a\09\87\80\80\80\00\01\00\41\76\0b\01"
    "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\02\94\80\80\80\00\01\08\73\70\65\63\74\65"
  "\73\74\05\74\61\62\6c\65\01\70\00\0a\03\82\80\80"
  "\80\00\01\00\09\87\80\80\80\00\01\00\41\00\0b\01"
  "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\02\94\80\80\80\00\01\08\73\70\65\63\74\65"
  "\73\74\05\74\61\62\6c\65\01\70\00\0a\03\82\80\80"
  "\80\00\01\00\09\87\80\80\80\00\01\00\41\09\0b\01"
  "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\02\94\80\80\80\00\01\08\73\70\65\63\74"
  "\65\73\74\05\74\61\62\6c\65\01\70\00\0a\03\84\80"
  "\80\80\00\03\00\00\00\07\9c\80\80\80\00\01\18\63"
  "\61\6c\6c\2d\6f\76\65\72\77\72\69\74\74\65\6e\2d"
  "\65\6c\65\6d\65\6e\74\00\02\09\8d\80\80\80\00\02"
  "\00\41\09\0b\01\00\00\41\09\0b\01\01\0a\a1\80\80"
  "\80\00\03\85\80\80\80\00\00\41\c1\00\0b\85\80\80"
  "\80\00\00\41\c2\00\0b\87\80\80\80\00\00\41\09\11"
  "\00\00\0b"
)
(assert_return (invoke "call-overwritten-element") (i32.const 66))
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\94\80\80\80\00\01\08\73\70\65\63\74\65"
    "\73\74\05\74\61\62\6c\65\01\70\00\0a\03\82\80\80"
    "\80\00\01\00\09\87\80\80\80\00\01\00\41\0a\0b\01"
    "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\95\80\80\80\00\01\08\73\70\65\63\74\65"
    "\73\74\05\74\61\62\6c\65\01\70\01\0a\14\03\82\80"
    "\80\80\00\01\00\09\87\80\80\80\00\01\00\41\0a\0b"
    "\01\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\94\80\80\80\00\01\08\73\70\65\63\74\65"
    "\73\74\05\74\61\62\6c\65\01\70\00\0a\03\82\80\80"
    "\80\00\01\00\09\87\80\80\80\00\01\00\41\7f\0b\01"
    "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_unlinkable
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\02\94\80\80\80\00\01\08\73\70\65\63\74\65"
    "\73\74\05\74\61\62\6c\65\01\70\00\0a\03\82\80\80"
    "\80\00\01\00\09\87\80\80\80\00\01\00\41\76\0b\01"
    "\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "elements segment does not fit"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\09\87\80\80\80\00"
    "\01\00\41\00\0b\01\00\0a\88\80\80\80\00\01\82\80"
    "\80\80\00\00\0b"
  )
  "unknown table 0"
)
(module $module1 binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\86\80\80\80\00\05\00\00\00\00\00\04"
  "\84\80\80\80\00\01\70\00\0a\07\ab\80\80\80\00\04"
  "\0c\73\68\61\72\65\64\2d\74\61\62\6c\65\01\00\06"
  "\63\61\6c\6c\2d\37\00\02\06\63\61\6c\6c\2d\38\00"
  "\03\06\63\61\6c\6c\2d\39\00\04\09\8d\80\80\80\00"
  "\02\00\41\08\0b\01\00\00\41\09\0b\01\01\0a\b9\80"
  "\80\80\00\05\85\80\80\80\00\00\41\c1\00\0b\85\80"
  "\80\80\00\00\41\c2\00\0b\87\80\80\80\00\00\41\07"
  "\11\00\00\0b\87\80\80\80\00\00\41\08\11\00\00\0b"
  "\87\80\80\80\00\00\41\09\11\00\00\0b"
)
(register "module1" $module1)
(assert_trap (invoke $module1 "call-7") "uninitialized element 7")
(assert_return (invoke $module1 "call-8") (i32.const 65))
(assert_return (invoke $module1 "call-9") (i32.const 66))
(module $module2 binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\02\9a\80\80\80\00\01\07\6d\6f\64\75\6c"
  "\65\31\0c\73\68\61\72\65\64\2d\74\61\62\6c\65\01"
  "\70\00\0a\03\83\80\80\80\00\02\00\00\09\8d\80\80"
  "\80\00\02\00\41\07\0b\01\00\00\41\08\0b\01\01\0a"
  "\95\80\80\80\00\02\85\80\80\80\00\00\41\c3\00\0b"
  "\85\80\80\80\00\00\41\c4\00\0b"
)
(assert_return (invoke $module1 "call-7") (i32.const 67))
(assert_return (invoke $module1 "call-8") (i32.const 68))
(assert_return (invoke $module1 "call-9") (i32.const 66))
(module $module3 binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\02\9a\80\80\80\00\01\07\6d\6f\64\75\6c"
  "\65\31\0c\73\68\61\72\65\64\2d\74\61\62\6c\65\01"
  "\70\00\0a\03\83\80\80\80\00\02\00\00\09\8d\80\80"
  "\80\00\02\00\41\08\0b\01\00\00\41\09\0b\01\01\0a"
  "\95\80\80\80\00\02\85\80\80\80\00\00\41\c5\00\0b"
  "\85\80\80\80\00\00\41\c6\00\0b"
)
(assert_return (invoke $module1 "call-7") (i32.const 67))
(assert_return (invoke $module1 "call-8") (i32.const 69))
(assert_return (invoke $module1 "call-9") (i32.const 70))
