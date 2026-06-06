(module
  (import "env" "exit" (func $exit (param i32)))

  (func (export "main")
    i32.const 42
    call $exit
  )
)
