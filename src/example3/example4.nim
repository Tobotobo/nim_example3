import ./A, ./B, ./C

proc createA(iType: int): A =
  case iType
  of 0:
    return A()
  of 1:
    return B()
  of 2:
    return C()
  else:
    return A() # ここでデフォルトの戻り値を返すか、エラーを投げるなどの処理を追加できます

var aa:A = A()
var ab:A = B()
var ac:A = C()

aa.sayHello()
ab.sayHello()
ac.sayHello()

var aa2:A = createA(0)
var ab2:A = createA(1)
var ac2:A = createA(2)

aa2.sayHello()
ab2.sayHello()
ac2.sayHello()