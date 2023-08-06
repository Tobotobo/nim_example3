import ./A, ./B, ./DIContainer
import sugar

DIContainer.add(A.class, _ => B())

let a = DIContainer.get(A.class)
a.sayHello()
