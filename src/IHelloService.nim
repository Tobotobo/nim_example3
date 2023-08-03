import ./ooutils
import ./Object

let uuid* = genUUID()

type IHelloService* = ref object of Object

method sayHello*(self: IHelloService) {.base.} = discard