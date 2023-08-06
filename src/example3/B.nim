import ./a

type
  B* = ref object of A

method sayHello*(self: B) = echo "B"