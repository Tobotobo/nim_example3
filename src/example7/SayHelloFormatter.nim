import ./Class
import ./Object

type SayHelloFormatter* = ref object of Object
let class* = Class[SayHelloFormatter]().regist()
proc new*():SayHelloFormatter = SayHelloFormatter(class:class)
proc getClass*(self: SayHelloFormatter): Class[SayHelloFormatter] = Class[SayHelloFormatter](self.class)

method format*(self: SayHelloFormatter, name: string):string {.base.} = 
  raise newException(Exception, "format method not implemented")

