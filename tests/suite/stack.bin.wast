(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\c4\80\80\80\00\05\08\66\61\63\2d\65\78\70\72"
  "\00\00\09\66\61\63\2d\73\74\61\63\6b\00\01\0d\66"
  "\61\63\2d\73\74\61\63\6b\2d\72\61\77\00\02\09\66"
  "\61\63\2d\6d\69\78\65\64\00\03\0d\66\61\63\2d\6d"
  "\69\78\65\64\2d\72\61\77\00\04\0a\85\82\80\80\00"
  "\05\af\80\80\80\00\01\02\7e\20\00\21\01\42\01\21"
  "\02\02\40\03\40\20\01\42\00\51\04\40\0c\02\05\20"
  "\01\20\02\7e\21\02\20\01\42\01\7d\21\01\0b\0c\00"
  "\0b\0b\20\02\0b\af\80\80\80\00\01\02\7e\20\00\21"
  "\01\42\01\21\02\02\40\03\40\20\01\42\00\51\04\40"
  "\0c\02\05\20\01\20\02\7e\21\02\20\01\42\01\7d\21"
  "\01\0b\0c\00\0b\0b\20\02\0b\af\80\80\80\00\01\02"
  "\7e\20\00\21\01\42\01\21\02\02\40\03\40\20\01\42"
  "\00\51\04\40\0c\02\05\20\01\20\02\7e\21\02\20\01"
  "\42\01\7d\21\01\0b\0c\00\0b\0b\20\02\0b\af\80\80"
  "\80\00\01\02\7e\20\00\21\01\42\01\21\02\02\40\03"
  "\40\20\01\42\00\51\04\40\0c\02\05\20\01\20\02\7e"
  "\21\02\20\01\42\01\7d\21\01\0b\0c\00\0b\0b\20\02"
  "\0b\af\80\80\80\00\01\02\7e\20\00\21\01\42\01\21"
  "\02\02\40\03\40\20\01\42\00\51\04\40\0c\02\05\20"
  "\01\20\02\7e\21\02\20\01\42\01\7d\21\01\0b\0c\00"
  "\0b\0b\20\02\0b"
)
(assert_return
  (invoke "fac-expr" (i64.const 25))
  (i64.const 7034535277573963776)
)
(assert_return
  (invoke "fac-stack" (i64.const 25))
  (i64.const 7034535277573963776)
)
(assert_return
  (invoke "fac-mixed" (i64.const 25))
  (i64.const 7034535277573963776)
)
