require_relative "../challenges/the_hashtag_generator"
require "test/unit"

class ChallengeTester < Test::Unit::TestCase
  def test_generate_hashtag
    a = HashtagGenerator.new

    unit_tests = [
      assert_equal(a.generateHashtag(""), false, "Expected an empty string to return false"),
      assert_equal(a.generateHashtag(" " * 200), false, "Still an empty string"),
      assert_equal(a.generateHashtag("Do We have A Hashtag"), "#DoWeHaveAHashtag", "Expected a Hashtag (#) at the beginning."),
      assert_equal(a.generateHashtag("Codewars"), "#Codewars", "Should handle a single word."),
      assert_equal(a.generateHashtag("Codewars Is Nice"), "#CodewarsIsNice", "Should remove spaces."),
      assert_equal(a.generateHashtag("Codewars is nice"), "#CodewarsIsNice", "Should capitalize first letters of words."),
      assert_equal(a.generateHashtag("code" + " " * 140 + "wars"), "#CodeWars"),
      assert_equal(a.generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat"), false, "Should return false if the final word is longer than 140 chars."),
      assert_equal(a.generateHashtag("a" * 139), "#A" + "a" * 138, "Should work"),
      assert_equal(a.generateHashtag("a" * 140), false, "Too long")
    ]


    unit_tests.each do |unit_test|
      unit_test.run_method
    end
  end
end

class MethodCreator(unit_test)
  def initialize
    unit_test = unit_test
  end

  def unit_test_to_method
    unit_test = new method
  end
end
