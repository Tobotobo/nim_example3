import ./Class
import ./IHelloService

type HelloService* = ref object of IHelloService

let class* = Class.New[HelloService]()

method getClass*(self: HelloService): Class[HelloService] {.base.} = class

method sayHello*(self: HelloService) = 
  echo "hello!"