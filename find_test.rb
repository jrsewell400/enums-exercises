gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"] #array of strings set equal to variable words
    found = words.find do |word| # set found variable equal to the find enumerable and iterate over each element in the words array using block variable word
      word.length == 7 #if the length of the word is 7, then it will automatically be put into found variable
    end
    assert_equal "unicorn", found #assert that unicorn is in the found variable
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"] #set array of strings equal to words variable
    found = words.find do |word| #for each element of the words array, iterate over each and,
      word == "waldo" #find any word that is equal to "waldo", and put it in the variable found
    end
    assert_nil found #assert that variable found has nothing in it
  end

  def test_find_waldo
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = words.find do |word| #for each element of the words array, iterate over each and,
      word == "waldo" #find any word that is equal to "waldo", and put it in the variable found
    end
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words
    words = ["piglet", "porridge", "bear", "blueberry"]
    found = words.find do |word|
      word.length <= 3
    end
    assert_nil found
  end

  def test_find_13
    numbers = [2, 13, 19, 8, 3, 27]
    found = numbers.find do |num|
      num == 13
    end
    assert_equal 13, found
  end

  def test_find_first_even_number
    numbers = [3, 7, 13, 11, 10, 2, 17]
    found = numbers.find do |num|
      num.even?
      return
    end
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    numbers = [2, 8, 9, 27, 24, 5]
    found = numbers.find do |num|
      num / 3 != 0
      return
    end
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    found = words.find do |word|
      word.chars.first == "q"
      return
    end
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    found = words.find do |word|
      word.split(//).last(2).join == "er"
      return
    end
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = numbers.find do |num|
      return if num > 20
    end
    assert_equal 21, found
  end

end
