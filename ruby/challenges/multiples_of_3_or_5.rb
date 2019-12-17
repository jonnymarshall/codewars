require 'byebug'

def solution(number, count = 1, sum = 0)
 until count == number
  # byebug
  sum += count if count % 3 == 0 || count % 5 == 0
  count += 1
 end
 sum
end


# p solution(10)
#23

# p solution(20)
#78

# p solution(200)
# 9168
