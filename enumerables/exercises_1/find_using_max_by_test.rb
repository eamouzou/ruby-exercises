gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindUsingMaxByTest < Minitest::Test
  # You get the first test for free... it's already passing.
  def test_longest_word
    words = ["apple", "banana", "cherry", "date", "eggplant"]

    found_word = words.max_by do |word|
      word.length
    end

    assert_equal "eggplant", found_word
  end

  # This one is missing the block inside the loop.
  def test_shortest_word # how do you find a minimal value using max_by

    words = ["apple", "banana", "cherry", "date", "eggplant"]

    # greatest = words.first
    # words.each do |word|
    #   if word.rjust(10, "0").count("0") > greatest.rjust(10, "0").count("0")
    #     greatest = word
    #   end
    # end

     found_word = words.max_by do |word|
       word.rjust(10, "0").count("0")
     end

    assert_equal "date", found_word
  end

  # This one is missing the entire loop
  def test_array_with_the_most_items

    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]

    biggest_array = arrays.max_by do |array|
      array.length
    end

    assert_equal [1, 2, 3, 4, 5], biggest_array
  end

  # You're on your own on this one.
  def test_array_with_the_fewest_items # support?

    arrays = [[:a, :b, :c], [1, 2, 3, 4, 5], ["zoo", :things, :stuff]]
    x = arrays.length - 1
    x.times {  smallest_array = arrays.max_by do |array|
        array.length
      end
      arrays.delete(smallest_array)
    }

    smallest_array = arrays.max_by do |array|
      array.length
    end

    assert_equal [:a, :b, :c], smallest_array
  end

  def test_biggest_number
    numbers = [1, 10, 100, 1000, 10000, 1000000]

    found = numbers.max_by do |number|
      number
    end

    assert_equal 1000000, found
  end

  def test_smallest_number

    numbers = [1, 10, 100, 1000, 10000, 1000000]

    # write code here
    x = numbers.length - 1
    x.times {
      found = numbers.max_by do |number|
        number
      end
      numbers.delete(found)
    }

    found = numbers.max_by do |number|
      number
    end

    assert_equal 1, found
  end

  def test_most_programmers

    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}

    # write code here
    most_programmers = programmers.max_by do |lang, prog_array|
      prog_array.length
    end # produces an array with the key as first element, and array as second

    assert_equal :ruby, most_programmers.first
  end

  def test_fewest_programmers

    programmers = {ruby: ["katrina", "sandi", "jim", "aaron", "desi"], java: ["abby", "jon", "susan"]}

    # write code here
    x = programmers.length - 1
    x.times{
      most_programmers = programmers.max_by do |lang, prog_array|
        prog_array.length
      end
    programmers.delete(most_programmers[0])
    }

    fewest_programmers = programmers.max_by do |lang, prog_array|
      prog_array.length
    end

    assert_equal :java, fewest_programmers.first
  end
end
