gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"] #array of strings equal to variable
    found = nil #variable set to nil
    words.each do |word| #for each element of the word array, do to the block variable
      if word.length == 7 #if any word in the array is 7 letters long, then
        found = word #the found variable is given that word
        break #exits the innermost loop
      end
    end
    assert_equal "unicorn", found #assert that the word unicorn is within the found variable
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"] #array of strings set equal to a variable
    found = nil #variable set equal to nil
    words.each do |word| #for each element of the word array do to the block variable word which iterates over each element of the array
      if word == "waldo" #if any element in the array is waldo, then
        found = word #put that word into the found variable
      end
    end
    assert_nil found
  end

  def test_find_waldo
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"] #array of strings set equal to a variable
    found = nil #variable set equal to nil
    words.each do |word| #for each element in the array words, iterate over each one using the block variable word
      if word == "waldo" #if the word being iterated over is equal to "waldo", then
        found = word #put that word in the variable found
      end
    end #assert that waldo is a part of found
    assert_equal "waldo", found #assert that waldo is a part of found
  end

  def test_cannot_find_3_letter_words
    words = ["piglet", "porridge", "bear", "blueberry"] #array of strings set equal to a variable
    found = nil #variable found set equal to nil
    words.each do |word| #for each element in the array words, iterate over each using the block variable word
      if word.length <= 3 #if the word length is less than or equal to three, then
        found = word #set found variable equal to any word that is less than or equal to three
      end
    end
    assert_nil found #assert that found is equal to nil
  end

  def test_find_13
    numbers = [2, 13, 19, 8, 3, 27] #array of integers set equal to the variable numbers
    found = nil #found variable set equal to nil
    numbers.each do |number| #for each element of the numbers array, iterate over each using the block variable number
      if number == 13 #if any number in the array is 13, then
        found = number #set found variable equal to that number
      end
    end
    assert_equal 13, found #assert that found is equal to 13
  end

  def test_find_first_even_number
    numbers = [3, 7, 13, 11, 10, 2, 17] #string of integers set equal to numbers variable
    found = nil #found variable set equal to nil
    numbers.each do |number| #for each element within numbers, iterate over each using the block varible numbers
      if number == 10 #if any number in the array is 10, then
        found = number #set the found variable equal to that number
      end
    end
    assert_equal 10, found #assert that found is equal to 10
  end

  def test_find_first_multiple_of_3
    numbers = [2, 8, 9, 27, 24, 5] #set array of integers equal to variable numbers
    found = nil #set found equal to nil
    numbers.each do |number| #for each element of the numbers array, iterate over each using the block variable number
      if number / 3 #if the number is divisible by 3, then
        found = number #set found equal to that number
        return #stops the enumerable from running on anything after the first multiple of 3
      end
    end
    assert_equal 9, found #assert that found is 9
  end

  def test_find_first_word_starting_with_q
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"] #set array of strings equal to variable words
    found = nil #set found equal to nil
    words.each do |word| #for each element in the array, iterate over each using the block variable word
      if word.chars.first == "q" #if any element of the array's first (.first) character (.chars) is "q", then
      #if word.split(//).first == "q" #can also use this to pass the test as well
        found = word #set that word equal to found
        return #stops the iteration once the condition has been met
      end
    end
    assert_equal "quill", found #assert that found is equal to quill
  end

  def test_find_first_word_ending_with_er
    words = ["biggest", "pour", "blight", "finger", "pie", "border"] #set words variable equal to an array of strings
    found = nil #set found variable equal to nil
    words.each do |word| #for each element in the words array, iterate over each using the block variable word
      if word.split(//).last(2).join == "er" #if you can split each element of the array into individaul characters (ie "f","i","n","g","e","r"),
        #isolate the last two characters (IE "e" and "r"), and combine them (IE "er"), then
        found = word #set that word equal to found
        return #stop the iteration if the above condition is met
      end
    end
    assert_equal "finger", found #assert that "finger" is equal to found
  end

  def test_find_first_number_greater_than_20
    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = nil
    numbers.each do |number|
      if number > 20
        found = number
        return
      end
    end
    assert_equal 21, found
  end

  def test_it_has_evens
    numbers = [1,2,3,4,5]

    even_numbers = nil
    numbers.each do |num|
      if num.even?
        even_numbers = num
      end
    end
  end
end


states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

def get_state_abb(key)
  states[key]
end
