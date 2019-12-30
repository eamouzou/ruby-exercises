class Ghostbuster
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def say_my_name
    puts "I'm #{name}"
  end

  def get_car(car = "ECTO-1")
    @car = car
  end

  def ride
    get_car
    puts "I'm riding the #{@car}."
  end

end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
puts ghostbuster.ride
