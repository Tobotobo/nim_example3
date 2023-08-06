import ./Class

type Object* = ref object of RootObj
  class*: ClassBase

# let class* = Class.regist(Class[Object]())
let class* = Class[Object]().regist()

proc new*():Object = Object(class:class)

proc getClass*(self: Object): Class[Object] = Class[Object](self.class)
