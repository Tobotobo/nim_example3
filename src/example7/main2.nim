# https://zenn.dev/hastur/scraps/dbbfb7c1c78c31
import macros
import ./Object

dumpAstGen:
  type HelloService* = ref object of Object
  let class* = Class[HelloService]().regist()
  proc new*():HelloService = HelloService(class:class)
  proc getClass*(self: HelloService): Class[HelloService] = Class[HelloService](self.class)


# dumpTree:
#   echo "hello"

# dumpAstGen:
#   echo "hello"

# static:
#   let astStr =
#     nnkStmtList.newTree(
#       nnkCommand.newTree(
#         newIdentNode("echo"),
#         newLit("Hello")
#       )
#     ).treeRepr
#   echo astStr