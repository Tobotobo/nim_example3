import ./Class
import ./Object

type
  A* = ref object of Object

method sayHello*(self: A) {.base.} = echo "A"

let class* = Class[A]().regist()

proc new*():A = A(class:class)

proc getClass*(self: A): Class[A] = Class[A](self.class)