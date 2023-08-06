import ./DIContainer2
import ./IHelloService
import ./HelloService
import sugar

DIContainer2.add(IHelloService.class, _ => HelloService())

let helloService = DIContainer2.get(IHelloService.class)

helloService.sayHello()