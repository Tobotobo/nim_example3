import ./Class
import ./A, ./B, ./C

var aa:A = A.new()
var ab:A = B.new()
var ac:A = C.new()

aa.sayHello()
ab.sayHello()
ac.sayHello()

echo aa.getClass().getId()
echo ab.getClass().getId()
echo ac.getClass().getId()