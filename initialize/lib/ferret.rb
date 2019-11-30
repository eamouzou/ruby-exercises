class Ferret
  attr_reader :name

  def initialize
    @name = "a ferret has no name"
  end

  def give_name(given_name)
    @name = "a ferret's name is #{given_name}"
  end
end
