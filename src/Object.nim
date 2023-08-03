import ./ooutils

let uuid* = genUUID()

type Object* = ref object of RootObj
