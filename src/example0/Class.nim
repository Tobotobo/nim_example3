type Class*[T] = ref object
  id: int

var curId = 0

proc New*[T](): Class[T] = 
  var clazz = Class[T]()
  curId += 1
  clazz.id = curId
  return clazz

proc getId*[T](self: Class[T]):int = self.id

