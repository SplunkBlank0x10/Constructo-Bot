(module
  (import "env" "print" (func $print (param i32 i32)))

  (memory 1)

  (data (i32.const 0) "\0A")

  (func (export "main")
    i32.const 0
    i32.const 1
    call $print
  )
)
