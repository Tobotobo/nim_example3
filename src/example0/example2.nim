# https://nim-lang.org/blog/2023/08/01/nim-v20-released.html
# Improved type inference

let foo: seq[(float, byte, cstring)] = @[(1, 2, "abc"), (2, 3, "def")]
echo foo