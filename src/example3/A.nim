type
  A* = ref object of RootObj

method sayHello*(self: A) {.base.} = echo "A"