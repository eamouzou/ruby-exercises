class Dragon
  attr_reader :name, :color, :rider, :hungry, :meals_eaten

  def initialize(name, color, rider )
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @meals_eaten = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @meals_eaten += 1
    if @meals_eaten == 3
      @hungry = false
    end
  end
end
#yes
