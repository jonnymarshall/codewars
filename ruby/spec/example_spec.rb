require_relative "../challenges/the_hashtag_generator"
require "test/unit"

class ChallengeTester < Test::Unit::TestCase
  def test_string_return_false
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag(""), false, "Expected an empty string to return false")
  end

  def test_space_return_false
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag(" " * 200), false, "Still an empty string")
  end

  def test_do_we_have_a_hashtag
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("Do We have A Hashtag"), "#DoWeHaveAHashtag", "Expected a Hashtag (#) at the beginning.")
  end

  def test_single_word_handle
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("Codewars"), "#Codewars", "Should handle a single word.")
  end

  def test_no_spaces
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("Codewars Is Nice"), "#CodewarsIsNice", "Should remove spaces.")
  end

  def test_capitalize_letters
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("Codewars is nice"), "#CodewarsIsNice", "Should capitalize first letters of words.")
  end

  def test_ignore_spaces
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("code" + " " * 140 + "wars"), "#CodeWars")
  end

  def test_length_checker_one
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat"), false, "Should return false if the final word is longer than 140 chars.")
  end

  def test_length_checker_two
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("a" * 139), "#A" + "a" * 138, "Should work")
  end

  def test_length_checker_three
    a = HashtagGenerator.new
    assert_equal(a.generateHashtag("a" * 140), false, "Too long")
  end
end

# class ChallengeTester < Test::Unit::TestCase
#   def test_string_return_false
#     a = HashtagGenerator.new
#     assert_equal(a.generateHashtag(""), false, "Expected an empty string to return false")
#   end

#   def test_crisis_false
#     assert_equal true, true
#   end
# end
