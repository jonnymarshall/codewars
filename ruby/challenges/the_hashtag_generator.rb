class HashtagGenerator
  def generateHashtag(str)
    "##{str.capitalize}"
    # All words must have their first letter capitalized.
    # If the final result is longer than 140 chars it must return false.
    # If the input or the result is an empty string it must return false.
  end
end
