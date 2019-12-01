class Monkey
  attr_reader :atts, :name, :type, :favorite_food

  def initialize(atts = [])
    @atts = atts #argument is an array
    @name = @atts[0] #instance variable calls up 1st element in the array
    @type = @atts[1]
    @favorite_food = @atts[2]
  end

end
