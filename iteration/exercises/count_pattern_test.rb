require 'minitest/autorun'
require 'minitest/pride'

class CountPatternTest < Minitest::Test

  def test_1
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = 0
    ages.each do |age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    assert_equal 2, younger_than_thirty
  end

  def test_2
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = 0
    ages.each do |name, age|
      if age < 30
        younger_than_thirty += 1
      end
    end
    assert_equal 2, younger_than_thirty
  end

  def test_3

    ages = [39, 45, 29, 24, 50]
    older_than_fifty = 0
    ages.each do |age|
      older_than_fifty += 1 if age > 50
    end

    assert_equal 0, older_than_fifty
  end

  def test_4

    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    older_than_fifty = 0
    ages.each do |name, age|
      older_than_fifty += 1 if age > 50
    end

    assert_equal 0, older_than_fifty
  end

  def test_5

    ages = [39, 45, 29, 24, 50]
    multiple_of_three = 0
    ages.each do |age|
      multiple_of_three += 1 if age % 3 == 0
    end

    assert_equal 3, multiple_of_three
  end

  def test_6

    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = 0
    ages.each do |name, age|
      multiple_of_three += 1 if age % 3 == 0
    end

    assert_equal 3, multiple_of_three
  end

  def test_7

    family = ["alice", "bob", "charlie", "david", "eve"]
    names_with_three_letters = 0
    family.each do |name|
      names_with_three_letters += 1 if name.length == 3
    end

    assert_equal 2, names_with_three_letters
  end

  def test_8

    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie",
      uncle: "david",
      sister: "eve"
    }
    names_with_three_letters = 0
    family.each do |role, name|
      names_with_three_letters += 1 if name.length == 3
    end

    assert_equal 2, names_with_three_letters
  end

  def test_9

    prices = [1.0, 3.9, 5.99, 18.5, 20.0]
    whole_numbers = 0
    prices.each do |price|
      whole_numbers += 1 if price.to_i == price # could do (price % 1).zero?
    end

    assert_equal 2, whole_numbers
  end

  def test_10

    prices = {
      "shoes" => 1.0,
      "backpack" => 3.9,
      "books" => 5.99,
      "posters" => 18.5,
      "food" => 20.0
    }
    whole_numbers = 0
    prices.each do |name, price|
      whole_numbers += 1 if (price % 1).zero?
    end

    assert_equal 2, whole_numbers
  end
end
