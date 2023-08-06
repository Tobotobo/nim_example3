# nim c -d:release -d:strip --opt:size --out:bin/release/di_example1.exe src/di_example1.nim
# nim c --out:bin/release/di_example1.exe src/di_example1.nim

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