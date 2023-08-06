# https://qiita.com/bucho666/items/73f9f48610daa78e3983
import macros

proc typeName(head: NimNode): NimNode =
  if head.len == 0:head else: head[1]

# proc baseName(head: NimNode): NimNode =
#   if head.len == 0: newIdentNode("RootObj") else: head[2]

# macro class*(head: untyped): untyped =
#   quote do:
#     type `head` = ref object

macro class*(head, body: untyped): untyped =
  quote do:
    type `head` = ref object
      `body`

class IMyClass
  i:int = 0

# macro aaa(e: untyped): untyped =
#   quote do:
#     type `e` = object
#       i:int = 0

# aaa IMyClass

# let b = IMyClass()
# echo b.i

