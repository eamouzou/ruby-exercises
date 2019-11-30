class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect, :stark_count,
  :hunts_white_walkers

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @stark_count = 0
    @hunts_white_walkers = true
  end

  def protects(stark)
    if @stark_count >= 2
      "nope"
    elsif @home == stark.location
      @stark_count += 1
      stark.safe = true
      @hunts_white_walkers = false
      @starks_to_protect << stark
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark)
    @stark_count -= 1
    stark.safe = false
    @starks_to_protect -= [stark]
    return stark
  end

end

class Stark
  attr_reader :name, :location
  attr_accessor :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def house_words
    if self.name == 'Arya'
      return 'The North Remembers'
    else
    return 'Winter is Coming'
    end
  end
end
