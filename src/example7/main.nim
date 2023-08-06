import sugar
import ./DIContainer
import ./HelloService
import ./HelloServiceImpl
import ./SayHelloFormatter

type
  Formatter1 = ref object of SayHelloFormatter
  Formatter2 = ref object of SayHelloFormatter

method format*(self: Formatter1, name: string):string = 
  return name & "!1"

method format*(self: Formatter2, name: string):string = 
  return name & "!2"

# DIContainer.add(SayHelloFormatter.class, _ => Formatter1.new())
DIContainer.add(SayHelloFormatter.class, _ => Formatter2.new())
DIContainer.add(HelloService.class, container => HelloServiceImpl.new(container.get(SayHelloFormatter.class)))

let helloService = DIContainer.get(HelloService.class)
helloService.sayHello("東京 太郎")
