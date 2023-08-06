import ./Class
import ./Object

class HelloService

# type HelloService* = ref object of Object
# let class* = Class[HelloService]().regist()
# proc new*():HelloService = HelloService(class:class)
# proc getClass*(self: HelloService): Class[HelloService] = Class[HelloService](self.class)

method sayHello*(self: HelloService, name: string) {.base.} = 
  raise newException(Exception, "sayHello method not implemented")

