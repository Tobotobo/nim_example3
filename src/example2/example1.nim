type
  A* = ref object of RootObj
  B* = ref object of A
  C* = ref object of B

method sayHello*(self: A) {.base.} = echo "A"
method sayHello*(self: B) = echo "B"
method sayHello*(self: C) = echo "C"

when isMainModule:
  var aa:A = A()
  var ab:A = B()
  var ac:A = C()

  aa.sayHello()
  ab.sayHello()
  ac.sayHello()