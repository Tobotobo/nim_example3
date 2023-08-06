import ./Class
import ./Object
import ./HelloService
import ./SayHelloFormatter

type HelloServiceImpl* = ref object of HelloService
  formatter*: SayHelloFormatter
let class* = Class[HelloServiceImpl]().regist()
proc new*(formatter: SayHelloFormatter):HelloServiceImpl = 
  HelloServiceImpl(class:class, formatter:formatter)
proc getClass*(self: HelloServiceImpl): Class[HelloServiceImpl] = Class[HelloServiceImpl](self.class)

method sayHello*(self: HelloServiceImpl, name: string) = 
  echo "hello " & self.formatter.format(name)

