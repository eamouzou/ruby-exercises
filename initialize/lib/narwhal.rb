class Narwhal
  attr_reader :atts, :name, :weight, :cute

  def initialize(atts = {})
    @atts = atts
    @name = atts[:name]
    @weight = atts[:weight]
    @cute = atts[:cute]
  end

  def cute?
    @cute
  end



end
