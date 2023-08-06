import ./Class
import ./Object

type IHelloService* = ref object of Object

let class* = Class.New[IHelloService]()

method getClass*(self: IHelloService): Class[IHelloService] = class

method sayHello*(self: IHelloService) {.base.} = discard