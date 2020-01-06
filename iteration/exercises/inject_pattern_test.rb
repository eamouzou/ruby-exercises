require 'minitest/autorun'
require 'minitest/pride'

class InjectPatternTest < Minitest::Test

  def test_1
    numbers = [28, 12, 38, 1, 91]
    # Iterate over the numbers array defined above,
    # to find the difference of all the numbers
    difference = 0
    numbers.each do |number|
      difference = difference - number
    end
    assert_equal -170, difference
  end

  def test_2

    bills = {
      rent: 800,
      car: 240,
      insurance: 110,
      medical: 1112
    }
    # Iterate over the bills hash defined above
    # to find the difference of all the values

    difference = 0
    bills.each do |(category, amount)|
      difference -= amount
    end
    assert_equal -2262, difference
  end

  def test_3

    numbers = [2, 3, 5, 7]
    # Iterate over the numbers array defined above
    # to find the product of all the numbers

    product = 1
    numbers.each do |number|
      product *= number
    end
    assert_equal 210, product
  end

  def test_4

    scrabble_score = {
      letter_total: 23,
      word_muliplier: 3,
      bonus: 2
    }
    # Iterate over the scrabble_score hash defined above
    # to find the product of all the values

    product = 1
    scrabble_score.each do |(key, value)|
      product *= value
    end
    assert_equal 138, product
  end

  def test_5

    airlines = ["Southwest", "Delta", "United", "Frontier"]
    # Iterate over the airlines array defined above to
    # create a hash with the name of the airline as the
    # key and the length of the name as the value

    number_of_letters = {}
    # Your Code Here
    airlines.each do |airline|
      number_of_letters[airline] = airline.length
    end

    expected = {
      "Southwest" => 9,
      "Delta" => 5,
      "United" => 6,
      "Frontier" => 8
    }
    assert_equal expected, number_of_letters
  end

  def test_6

    topping_calories = {
      pepperoni: 430,
      sausage: 400,
      olives: 10,
      peppers: 10,
      onions: 20
    }
    # Iterate over the topping_calories hash defined above
    # to create an array of all the toppings

    toppings = []
    # Your Code Here
    topping_calories.each do |key, value|
      toppings << key.to_s
    end

    assert_equal ["pepperoni", "sausage", "olives", "peppers", "onions"], toppings
  end

  def test_7

    elements = [["a", 1], ["b", 9], ["c", 21]]
    # Iterate over the elements array defined above
    # to find the sum of all the integers
    sum_of_second_values = 0
    # Your Code Here
    elements.each do |array|
      sum_of_second_values += array[1]
    end

    assert_equal 31, sum_of_second_values

  end

  def test_8

    toppings = {
      pepperoni: {
        calories: 430,
        quantity: 5
      },
      sausage: {
        calories: 400,
        quantity: 10
      },
      olives: {
        calories: 10,
        quantity: 20
      },
      peppers: {
        calories: 10,
        quantity: 20
      },
      onions: {
        calories: 20,
        quantity: 20
      }
    }
    # Iterate over the toppings array defined above to find
    # total calories. You will need to multiply each topping's
    # calorie count by the quantity
    total_calories = 0

    # Your Code Here
    toppings.each do |type, hash|
      total_calories += (hash[:calories] * hash[:quantity])
    end

    assert_equal 6950, total_calories
  end

  def test_9

    grades = {
      quizzes: [8, 5, 3, 6, 5],
      tests: [23, 21, 24],
      essays: [10, 11, 10],
      final: [47]
    }
    # Iterate over the elements array defined above
    # to calculate the final grade. The final grade is
    # calculated by averaging each category together and
    # summing all of the averages
    final_grade = 0
    # Your code goes here
    grades.each do |assessment, array|
      final_grade += (array.sum / array.length.to_f)
    end

    assert_equal 85.40, final_grade
  end

  def test_10

    menu = {
      empanadas: {
        flavors: ["chicken", "potato", "steak", "veggie"],
        gluten_free: false
      },
      scones: {
        flavors: ["blueberry", "vanilla"],
        gluten_free: false
      },
      parfaits: {
        flavors: ["blueberry", "strawberry", "cherry"],
        gluten_free: true
      }
    }

    # Iterate over the menu hash above to create a printable
    # version of the menu
    printable_menu = "Menu:\n"\

    # Your Code Here
    menu.each do |food, hash|
      toinsert = "- "
      hash[:flavors].each do |flavor|
        if hash[:flavors].last == flavor
          toinsert += "and "
          toinsert += flavor
          toinsert += " "
          toinsert += food.to_s
          if hash[:gluten_free] == false
            toinsert += " (non gluten free)\n"\
          elsif hash[:gluten_free] == true
            toinsert += " (gluten free)\n"\
          end
        else
          toinsert += flavor += ", "
        end
      end
      printable_menu += toinsert
    end


    expected =  "Menu:\n"\
                "- chicken, potato, steak, and veggie empanadas (non gluten free)\n"\
                "- blueberry, and vanilla scones (non gluten free)\n"\
                "- blueberry, strawberry, and cherry parfaits (gluten free)\n"

    assert_equal expected, printable_menu
  end
end
