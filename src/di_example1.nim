import ./DiContainer
import ./IHelloService
import ./HelloService
import sugar
import ./Object

type MyClass = ref object of Object 

proc sayHello() =
  echo "hello"

DIContainer.add[MyClass](_ => MyClass())

let helloService = DIContainer.get[MyClass]()

helloService.sayHello()