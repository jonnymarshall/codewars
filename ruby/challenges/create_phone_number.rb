def createPhoneNumber(numbers)
  "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..10].join}"
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# (123) 456-7890
