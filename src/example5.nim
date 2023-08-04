import tables

# 

type
  ABase = ref object of RootObj
  A[T] = ref object of ABase

# var myDict: Table[ptr ABase, string] = initTable[ptr ABase, string]()
# let key1 = A[int]()
# let key2 = A[string]()
# myDict[key1.addr] = "test1" # Error: expression has no address; maybe use 'unsafeAddr'
# myDict[key2.addr] = "test2" # Error: expression has no address; maybe use 'unsafeAddr'

var myDict: Table[ABase, string] = initTable[ABase, string]()
let key = ABase()
let key1 = A[int]()
# let key2 = A[string]()
# myDict[key] = "test1"
# myDict[key1] = "test1"