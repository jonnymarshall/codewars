def array_diff(a, b)
  a.delete(b.first)
  a
end

array_diff([1,2], [1])
# 2

array_diff([1,2,2], [1])
# 2,2

array_diff([1,2,2], [2])
# 1

array_diff([1,2,2], [])
# 1,2,2

array_diff([], [1,2])
# []
