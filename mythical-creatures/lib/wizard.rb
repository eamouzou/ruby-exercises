class Wizard
  attr_reader :name, :bearded, :spells_cast

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    return "sudo #{spell}"
  end

  def rested?
    if spells_cast < 3
      true
    elsif spells_cast >= 3
    false
    end
  end

  def cast
    @spells_cast += 1
    return "MAGIC MISSILE"
  end

end
