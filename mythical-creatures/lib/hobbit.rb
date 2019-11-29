class Hobbit
  attr_reader :name, :disposition, :age, :short, :has_ring

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @short = true
    @has_ring = assign_ring_on_creation
  end

  def assign_ring_on_creation
    return true if self.name.downcase == "Frodo"
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return true if @age >=33
    false
  end

  def old?
    return true if @age >= 101
    false
  end

  def has_ring?
    return true if self.name == "Frodo"
    false
    # return true if self.name == Frodo
    # return false if self.name == Sam
  end

  def is_short?
    @short
  end
end
