class Medusa
  attr_reader :name, :statues, :count

  def initialize(name)
    @name = name
    @statues = []
    @count = 0
  end

  def empty?
    return true if @statues.count = 0 # how does it pass if no boolean like maria's
    false
  end

  def stare(victim)
    if @statues.count >=3
      victim.stoned = true
      return "Too full for 4. Must switch! Bye #{@statues[0].name}."
      @statues.shift
      @statues << victim
    else
      @statues << victim
      @count += 1
      victim.stoned = true
    end

  end

end


class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
