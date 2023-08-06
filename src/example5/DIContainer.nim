import tables
import typetraits
import macros
import ./Object
import ./Class

type
  DIContainer* = ref object of Object
    dic: Table[int, proc(container: DIContainer): Object]

proc create*(): DIContainer =
  let diContainer = DIContainer()
  diContainer.dic = initTable[int, proc(container: DIContainer): Object]()
  return diContainer

let container = create()

proc add*[T](self: DIContainer, clazz:Class[T], creator: proc(container: DIContainer): Object) =
  self.dic[clazz.getId()] = creator

proc add*[T](clazz:Class[T], creator: proc(container: DIContainer): Object) =
  add(container, clazz, creator)

proc get*[T](self: DIContainer, clazz:Class[T]): T =
  let creator = self.dic[clazz.getId()]
  let value = creator(self)
  return T(value)

proc get*[T](clazz:Class[T]): T =
  return get(container, clazz)

# proc add*[T](container: DIContainer, creator: ServiceCreator) =
#   let name = typeof(T).name
#   container.dic[name] = creator

# proc add*[T](creator: ServiceCreator) =
#   add[T](container, creator)

# proc add*[T](t: T, creator: ServiceCreator) =
#   let name = typeof(T).name
#   container.dic[name] = creator


# macro add*[T](creator: ServiceCreator) =
#   let name = typeof(T.T).name
#   quote do:
#     container.dic[`name`] = `creator`

# macro add*[T: typedesc](creator: ServiceCreator): untyped =
#   let name = getTypeImpl(T).toStrLit
#   quote do:
#     container.dic[`name`] = `creator`

# template add*[T: untyped](creator: ServiceCreator) =
#   let name = typeof(T).name
#   container.dic[name] = creator

# proc add*[T](creator: ServiceCreator) =
#   let name = typeof(T).name
#   container.dic[name] = creator

# **************************************************************

# proc get*[T](container: DIContainer): T =
#   let name = typeof(T).name
#   let creator = container.dic[name]
#   let value = creator(container)
#   return T(value)

# proc get*[T](): T =
#   return get[T](container)

# template get*[T](): T.T =
#   let name = typeof(typedesc(T.T)).name
#   let creator = container.dic[name]
#   let value = creator(container)
#   return T.T(value)

# macro get*[T](): T.T =
#   let name = typeof(T.T).name
#   quote do:
#     let creator = container.dic[`name`]
#     let value = creator(container)
#     return T.T(value)

# macro get*[T: typedesc](): untyped =
#   let name = getTypeImpl(T).toStrLit
#   quote do:
#     let creator = container.dic[`name`]
#     let value = creator(container)
#     T(value)

# macro get*[T: string](): untyped =
#   quote do:
#     let creator = container.dic[`T`]
#     let value = creator(container)
#     T(value)
    
# proc get*[T](t: T): T =
#   let name = typeof(T).name
#   let creator = container.dic[name]
#   let value = creator(container)
#   return T(value)

# template get*[T: untyped](): T =
#   let name = typeof(T).name
#   let creator = container.dic[name]
#   let value = creator(container)
#   T(value)

# proc get*[T](): T =
#   let name = typeof(T).name
#   let creator = container.dic[name]
#   let value = creator(container)
#   return T(value)


# ------------------------------------------------
# when isMainModule:
#   type MyClass1 = ref object of Object
#   proc sayHello*(self: MyClass1) =
#     echo "hello1"

#   add[MyClass1](proc(container: DIContainer): Object = MyClass1())
  
#   var myClass1 = get[MyClass1]()
#   myClass1.sayHello()




