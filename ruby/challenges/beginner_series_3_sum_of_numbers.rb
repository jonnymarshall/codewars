require 'byebug'

def get_sum(numa, numb)
  # Good Luck!
  if numa == numb
    numa
  else
    numa > numb ? calculate(numa, numb) : calculate(numb, numa)
  end
end

def calculate(greaternum, lessernum, sum_of_numbers = 0)
  # byebug
  until greaternum < lessernum
    sum_of_numbers += greaternum
    greaternum -= 1
  end
  sum_of_numbers
end

# p get_sum(1,1)
# # 1

# p get_sum(0,1)
# # 1

# p get_sum(0,-1)
# # -1

# p get_sum(1,2)
# # 3

# p get_sum(5,-1)
# # 14
