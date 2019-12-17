def count_bits(int)
  p int.to_s(2).split(//).map(&:to_i).sum
end

# bits(1234)
