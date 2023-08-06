import ./Class

type Object* = ref object of RootObj

let class* = Class.New[Object]()

method getClass*(self: Object): Class[Object] {.base.} = class
