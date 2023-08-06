type A = ref tuple
  getId: proc(): int {.closure.}

proc newA(): A =
  result = A(
    getId: proc (): int {.closure.} = return 10
  )

when isMainModule:
  let a = newA()
  echo a.getId()