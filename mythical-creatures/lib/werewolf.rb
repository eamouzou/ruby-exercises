class Werewolf
  attr_reader :name, :location, :human, :hungry

  def initialize(name, location = "London", human = true)
    @name = name
    @location = location
    @human = human
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    if @human == true
      @human = false
    elsif @human == false
      @human = true
    end

    if @hungry == false
      @hungry = true
    elsif @hungry == true
      @hungry = false
    end
  end

  def wolf?
    if @human == true
      return false
    elsif @human == false
      return true
    end
  end

  def hungry?
    @hungry
  end

end
