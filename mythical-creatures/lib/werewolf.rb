class Werewolf
  attr_reader :name, :location, :human, :hungry, :victims,
  :consumed

  def initialize(name, location = "London", human = true)
    @name = name
    @location = location
    @human = human
    @hungry = false
    @victims = []
    @consumed = 0
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

  def yum_yum(victim)
    if human? == true
      return "The change must occur before the feed!"
    elsif human? == false
      @victims << victim
      @consumed += 1
      victim.status = :dead
      @hungry = false
      return "Muy delicioso!"
    end
  end

end
