import tables
import typetraits
import ./Object

# TODO
# - モジュールが異なっていても同じ名前のtypeが重複するためモジュール別にする
# - 文字列のキーを追加できるように

type
  ServiceCreator* = proc(container: DIContainer): Object
  DIContainer* = ref object of Object
    dic: Table[system.string, ServiceCreator]

proc create*(): DIContainer =
  let diContainer = DIContainer()
  diContainer.dic = initTable[string, ServiceCreator]()
  return diContainer

let container = create()

proc add*[T](container: DIContainer, creator: ServiceCreator) =
  let name = typeof(T).name
  container.dic[name] = creator

proc add*[T](creator: ServiceCreator) =
  add[T](container, creator)

proc get*[T](container: DIContainer): T =
  let name = typeof(T).name
  let creator = container.dic[name]
  let value = creator(container)
  return T(value)

proc get*[T](): T =
  return get[T](container)

# ------------------------------------------------
when isMainModule:
  type MyClass1 = ref object of Object
  proc sayHello*(self: MyClass1) =
    echo "hello1"

  add[MyClass1](proc(container: DIContainer): Object = MyClass1())
  
  var myClass1 = get[MyClass1]()
  myClass1.sayHello()




