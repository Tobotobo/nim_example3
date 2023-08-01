# https://nim-lang.org/blog/2023/08/01/nim-v20-released.html
# Better tuple unpacking

proc returnsNestedTuple(): (int, (int, int), int, int) = (4, (5, 7), 2, 3)

# Now nesting is supported!
let (x, (_, y), _, z) = returnsNestedTuple()
echo x, y, z