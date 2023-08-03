import ./DiContainer
import ./IHelloService
import ./HelloService
import sugar
import ./Object

type MyClass = ref object of Object 

proc sayHello(self: MyClass) =
  echo "hello"

DIContainer.add[IHelloService](_ => HelloService())
DIContainer.get[IHelloService]().sayHello()

DIContainer.add[MyClass](_ => MyClass())
DIContainer.get[MyClass]().sayHello()