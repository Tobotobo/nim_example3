import MyClass
import typetraits
import macros

proc echoType[T]() =
  echo typeof(T).name

template aaa[T](): untyped = 
    echo typeof(typedesc[T.T]).name
    # echoType[T]()


template bbb() =
  echo instantiationInfo().filename

echoType[MyClass.MyClass]()
aaa[MyClass]

echo MyClass.fileName
echo MyClass.getFileName()
echo instantiationInfo().filename
bbb