# https://nim-lang.org/blog/2023/08/01/nim-v20-released.html
# Default values for objects

type
  Rational* = object
    num: int = 0
    den: int = 1

var r = Rational()
assert $r == "(num: 0, den: 1)"