gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue

    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone

    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    # your code here
    medusa = Medusa.new("Cassio")
    victim1 = Person.new("Yabba")
    victim2 = Person.new("Dabba")
    victim3 = Person.new("Doo")
    victim4 = Person.new("Nope")

    refute victim1.stoned?
    medusa.stare(victim1)
    assert_equal 1, medusa.statues.count
    assert victim1.stoned?

    refute victim2.stoned?
    medusa.stare(victim2)
    assert_equal 2, medusa.statues.count
    assert victim2.stoned?

    refute victim3.stoned?
    medusa.stare(victim3)
    assert_equal 3, medusa.statues.count
    assert victim3.stoned?

    refute victim4.stoned?
    assert_equal "Too full for 4. Must switch! Bye Yabba.", medusa.stare(victim4)
    assert_equal 3, medusa.statues.count
    assert victim4.stoned?

  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned

    # your code here
    medusa = Medusa.new("Cassio")
    victim1 = Person.new("Yabba")
    victim2 = Person.new("Dabba")
    victim3 = Person.new("Doo")
    victim4 = Person.new("Nope")

    refute victim1.stoned?
    medusa.stare(victim1)
    assert_equal 1, medusa.statues.count
    assert victim1.stoned?

    refute victim2.stoned?
    medusa.stare(victim2)
    assert_equal 2, medusa.statues.count
    assert victim2.stoned?

    refute victim3.stoned?
    medusa.stare(victim3)
    assert_equal 3, medusa.statues.count
    assert victim3.stoned?

    refute victim4.stoned?
    assert_equal "Too full for 4. Must switch! Bye Yabba.", medusa.stare(victim4)
    assert_equal 3, medusa.statues.count
    assert victim4.stoned?
  end

end
