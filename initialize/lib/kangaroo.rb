class Kangaroo
  attr_reader :name
  attr_accessor :children

  def initialize(name, children = [])
    @name = name
    @children = children
  end
end
