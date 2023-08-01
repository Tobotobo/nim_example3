type MyClass* = ref object

template bbb(): string =
  instantiationInfo(fullPaths=true).filename

const fileName* = bbb

proc getFileName*(): string = 
  instantiationInfo().filename