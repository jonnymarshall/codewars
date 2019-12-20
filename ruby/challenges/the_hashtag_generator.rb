class HashtagGenerator
  def generateHashtag(str, hashtag = [])
    if str.gsub(/\s+/, "") == "" || str.gsub(/\s+/, "").length > 139
      false
    else
      str.split(/ /).each do |word|
        hashtag << word.capitalize
      end
      "##{hashtag.join.gsub(/\s+/, "")}"
    end
  end
end


# BEST ANSWER
# def generateHashtag(str)
#   str = "#" << str.split.map(&:capitalize).join
#   str.size <= 140 && str.size > 1 ? str : false
# end
