import macros

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

proc typeName(head: NimNode): NimNode =
  if head.len == 0:head else: head[1]

macro class*(head: untyped):untyped =
  let
    typeName = head.typeName

  nnkStmtList.newTree(
    nnkTypeSection.newTree(
      nnkTypeDef.newTree(
        nnkPostfix.newTree(
          newIdentNode("*"),
          typeName
          #newIdentNode("HelloService")
        ),
        newEmptyNode(),
        nnkRefTy.newTree(
          nnkObjectTy.newTree(
            newEmptyNode(),
            nnkOfInherit.newTree(
              newIdentNode("Object")
            ),
            newEmptyNode()
          )
        )
      )
    ),
    nnkLetSection.newTree(
      nnkIdentDefs.newTree(
        nnkPostfix.newTree(
          newIdentNode("*"),
          newIdentNode("class")
        ),
        newEmptyNode(),
        nnkCall.newTree(
          nnkDotExpr.newTree(
            nnkCall.newTree(
              nnkBracketExpr.newTree(
                newIdentNode("Class"),
                typeName
              )
            ),
            newIdentNode("regist")
          )
        )
      )
    ),
    nnkProcDef.newTree(
      nnkPostfix.newTree(
        newIdentNode("*"),
        newIdentNode("new")
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkFormalParams.newTree(
        typeName
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkStmtList.newTree(
        nnkObjConstr.newTree(
          typeName,
          nnkExprColonExpr.newTree(
            newIdentNode("class"),
            newIdentNode("class")
          )
        )
      )
    ),
    nnkProcDef.newTree(
      nnkPostfix.newTree(
        newIdentNode("*"),
        newIdentNode("getClass")
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkFormalParams.newTree(
        nnkBracketExpr.newTree(
          newIdentNode("Class"),
          typeName
        ),
        nnkIdentDefs.newTree(
          newIdentNode("self"),
          typeName,
          newEmptyNode()
        )
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkStmtList.newTree(
        nnkCall.newTree(
          nnkBracketExpr.newTree(
            newIdentNode("Class"),
            typeName
          ),
          nnkDotExpr.newTree(
            newIdentNode("self"),
            newIdentNode("class")
          )
        )
      )
    )
  )

macro helloMacro*() =
  nnkStmtList.newTree(
    nnkTypeSection.newTree(
      nnkTypeDef.newTree(
        nnkPostfix.newTree(
          newIdentNode("*"),
          newIdentNode("HelloService")
        ),
        newEmptyNode(),
        nnkRefTy.newTree(
          nnkObjectTy.newTree(
            newEmptyNode(),
            nnkOfInherit.newTree(
              newIdentNode("Object")
            ),
            newEmptyNode()
          )
        )
      )
    ),
    nnkLetSection.newTree(
      nnkIdentDefs.newTree(
        nnkPostfix.newTree(
          newIdentNode("*"),
          newIdentNode("class")
        ),
        newEmptyNode(),
        nnkCall.newTree(
          nnkDotExpr.newTree(
            nnkCall.newTree(
              nnkBracketExpr.newTree(
                newIdentNode("Class"),
                newIdentNode("HelloService")
              )
            ),
            newIdentNode("regist")
          )
        )
      )
    ),
    nnkProcDef.newTree(
      nnkPostfix.newTree(
        newIdentNode("*"),
        newIdentNode("new")
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkFormalParams.newTree(
        newIdentNode("HelloService")
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkStmtList.newTree(
        nnkObjConstr.newTree(
          newIdentNode("HelloService"),
          nnkExprColonExpr.newTree(
            newIdentNode("class"),
            newIdentNode("class")
          )
        )
      )
    ),
    nnkProcDef.newTree(
      nnkPostfix.newTree(
        newIdentNode("*"),
        newIdentNode("getClass")
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkFormalParams.newTree(
        nnkBracketExpr.newTree(
          newIdentNode("Class"),
          newIdentNode("HelloService")
        ),
        nnkIdentDefs.newTree(
          newIdentNode("self"),
          newIdentNode("HelloService"),
          newEmptyNode()
        )
      ),
      newEmptyNode(),
      newEmptyNode(),
      nnkStmtList.newTree(
        nnkCall.newTree(
          nnkBracketExpr.newTree(
            newIdentNode("Class"),
            newIdentNode("HelloService")
          ),
          nnkDotExpr.newTree(
            newIdentNode("self"),
            newIdentNode("class")
          )
        )
      )
    )
  )

