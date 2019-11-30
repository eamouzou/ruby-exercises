class Centaur #ben posted
  attr_reader :name, :breed, :cranky, :stand, :shoot_sound,
  :run_sound, :rested
  attr_accessor :shots, :runs

  def initialize(name, breed = "Palomino")
    @name = name
    @breed = breed
    @cranky = false
    @stand = true
    @shots = 0
    @runs = 0
    @shoot_sound = "Twang!!!"
    @run_sound = "Clop clop clop clop!!!"
    @rested = false
  end

  def shoot
    if standing? == false                 #if laying, can't shoot
      return "NO!"
    elsif (@shots + @runs) >= 3           #shoot step 2
      return "NO!"
    elsif (@shots + @runs) < 3            #shoot step 1
      @shots += 1
      return @shoot_sound
    end
  end

  def run
    if standing? == false                 #if laying, can't run
      return "NO!"
    elsif (@shots + @runs) >= 3           #run step 2
      return "NO!"
    elsif (@shots + @runs) < 3            #run step 1
      @runs += 1
      return @run_sound
    end
  end

  def cranky?
    if (@shots + @runs) >= 3              #gets cranky after 3 s+r's
      @cranky = true
    elsif @cranky
    end
  end

  def standing?
    @stand
  end

  def sleep
    if standing? == true                 # if centaur is standing, no sleep
      return "NO!"
    elsif standing? == false             # if laying, sleeps and removes crankiness
      @shots = 0
      @runs = 0
    end
  end

  def lay_down
    @stand = false
  end

  def laying?
    if @stand == false
      return true
    end
  end

  def stand_up
    @stand = true
  end

  def rested?
    @rested
  end

  def drink_potion
    if rested? == true
      return "Oh no, Baby! Now you sick."
    elsif standing? == true
      @rested = true
      return "Drank it!"
    elsif standing? == false
      return "Nah, son! Get up first."
    end
  end

  def not_rested
    @rested = false
  end


end
