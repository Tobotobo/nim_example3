import MyClass
import typetraits
import macros

proc echoType[T]() =
  echo typeof(T).name

template aaa[T](): untyped = 
    echo typeof(typedesc[T.T]).name
    # echoType[T]()

echoType[MyClass.MyClass]()
aaa[MyClass]