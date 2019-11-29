class Pirate
  attr_reader :name, :job, :curse, :booty
  # attr_accessor :booty, :heinous_act

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @heinous_act = 0
    @curse = false
    @booty = 0
  end

  def cursed?
    @curse
  end

  def commit_heinous_act
    @heinous_act += 1
    if @heinous_act >= 3
      @curse = true
    end
  end

  def has_booty?
    @booty
  end

  def rob_ships
    @booty += 100
  end

end
