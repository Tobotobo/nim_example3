import ./ooutils
import ./IHelloService

let uuid* = genUUID()

type HelloService* = ref object of IHelloService

method sayHello*(self: HelloService) = 
  echo "hello!"