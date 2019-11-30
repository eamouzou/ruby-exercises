class Ogre

  attr_reader :name, :home, :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter_counter += 1

    if human.notices_ogre? == true
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.encounter_counter -= 1 #set it back 1 to return false for knocked_out?
  end

end

class Human

  attr_reader :name
  attr_accessor :encounter_counter

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      return true
    else
      return false
    end
  end

  def knocked_out?
    if @encounter_counter == 6 #encounter 6 times means it swings twice and lands once
      # can't access swings, so have to use encounter_counter
      return true
    else
      false
    end
  end


end
