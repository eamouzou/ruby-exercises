gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'objects/thing'
require_relative 'objects/unicorn'
require_relative 'objects/gnome'
require_relative 'objects/squid'

class BonusQuestionsTest < Minitest::Test
  def test_7_factorial
    # Example: "Five factorial", written 5!, is
    # 1 * 2 * 3 * 4 * 5
    product = 1
    numbers = [1, 2, 3, 4, 5, 6, 7]
    numbers.each do |number|
      product *= number
    end
    assert_equal 5040, product
  end

  def test_first_roving_gnome

    gnome1 = Gnome.new('forest')
    gnome2 = Gnome.new('roving')
    gnome3 = Gnome.new('snorkeling')
    gnome4 = Gnome.new('evil')
    gnome5 = Gnome.new('roving')

    gnomes = [gnome1, gnome2, gnome3, gnome4, gnome5]

    found = gnomes.find do |gnome|
      gnome.roving?
    end

    assert_equal gnome2, found
  end

  def test_sum_of_factorials
    # easier way to do this???

    sum_of_factorials = 0
    numbers = [1, 2, 3, 4, 5]
    # write code here
    # factorial1 = 1 * numbers[0]
    # factorial2 = 1 * numbers[0] * numbers[1]
    # factorial3 = 1 * numbers[0] * numbers[1] * numbers[2]
    # factorial4 = 1 * numbers[0] * numbers[1] * numbers[2] * numbers[3]
    # factorial5 = 1 * numbers[0] * numbers[1] * numbers[2] * numbers[3] * numbers[4]
    # numbers.each do |number|
    #   # fstring = "factorial" + "#{number}"
    #   # sum_of_factorials += (binding.local_variable_get(fstring))
    # end
    numbers.each do |number|
      sum_of_factorials += (1..number).inject(:*) # inject and reduce are aliases
    end
    # # Sum some numbers
    # (5..10).reduce(:+)                             #=> 45
    # # Same using a block and inject
    # (5..10).inject { |sum, n| sum + n }            #=> 45
    # # Multiply some numbers
    # (5..10).reduce(1, :*)                          #=> 151200
    # # Same using a block
    # (5..10).inject(1) { |product, n| product * n } #=> 151200
    assert_equal 153, sum_of_factorials
  end

  def test_first_giant_squid

    squid1 = Squid.new('tiny')
    squid2 = Squid.new('inky')
    squid3 = Squid.new('giant')
    squid4 = Squid.new('deep sea')
    squid5 = Squid.new('giant')

    squiddies = [squid1, squid2, squid3, squid4, squid5]

    # write code here
    found = squiddies.find {|squid| squid.giant?}

    assert_equal squid3, found
  end

  def test_max_value

    max_num = 0
    numbers = [2, 16, 6, 50, 12]
    # write code here
    max_num = numbers.max
    assert_equal 50, max_num
  end

  def test_first_weird_thing_using_find

    thing1 = Thing.new('odd')
    thing2 = Thing.new('cool')
    thing3 = Thing.new('weird')
    thing4 = Thing.new('fun')
    thing5 = Thing.new('weird')

    things = [thing1, thing2, thing3, thing4, thing5]

    # write code here
    found = things.find {|thing| thing.weird?}

    assert_equal thing3, found
  end

  def test_first_pink_unicorn

    unicorn1 = Unicorn.new('white')
    unicorn2 = Unicorn.new('sparkly')
    unicorn3 = Unicorn.new('purple')
    unicorn4 = Unicorn.new('pink')
    unicorn5 = Unicorn.new('pink')

    unicorns = [unicorn1, unicorn2, unicorn3, unicorn4, unicorn5]

    # write code here
    found = unicorns.find {|unicorn| unicorn.pink?}

    assert_equal unicorn4, found
  end
end
