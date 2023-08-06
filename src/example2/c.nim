import ./b

type
  C* = ref object of B

method sayHello*(self: C) = echo "C"