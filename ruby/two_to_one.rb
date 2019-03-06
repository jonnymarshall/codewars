def longest(a1, a2, final_string = a1 + a2)
  final_string.split(//).sort.join.squeeze
end

# p longest("aretheyhere", "yestheyarehere")
# "aehrsty"

# p longest("loopingisfunbutdangerous", "lessdangerousthancoding")
# "abcdefghilnoprstu"

# p longest("inmanylanguages", "theresapairoffunctions")
# "acefghilmnoprstuy"
