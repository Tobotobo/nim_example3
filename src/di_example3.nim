import ./DIContainer2
import ./IHelloService
import ./HelloService
import ./Object
import ./Class
import sugar

let container = DIContainer2.create()


container.add(IHelloService.class, _ => HelloService())

let helloService = container.get(IHelloService.class)

helloService.sayHello()

let obj: Object = helloService
let clazz1 = helloService.getClass()
let clazz2 = obj.getClass()

echo clazz1.getId()
echo clazz2.getId()
