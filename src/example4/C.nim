import ./Class
import ./b

type
  C* = ref object of B

method sayHello*(self: C) = echo "C"

let class* = Class[C]().regist()

proc new*():C = C(class:class)

proc getClass*(self: C): Class[C] = Class[C](self.class)