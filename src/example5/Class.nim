type
  ClassBase* = ref object of RootObj
    id: int = 0
  Class*[T] = ref object of ClassBase

var curId = 0

proc regist*[T](clazz:Class[T]): Class[T] = 
  if clazz.id == 0:
    curId += 1
    clazz.id = curId
  return clazz

# proc getId*[T](self: Class[T]):int = self.id
proc getId*(self: ClassBase):int = self.id

