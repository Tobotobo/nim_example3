import ./Class
import ./a

type
  B* = ref object of A

method sayHello*(self: B) = echo "B"

let class* = Class[B]().regist()

proc new*():B = B(class:class)

proc getClass*(self: B): Class[B] = Class[B](self.class)