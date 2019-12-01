class Rabbit
  attr_reader :atts, :num_syllables, :name

  def initialize(atts = {})
    @atts = atts
    @num_syllables = atts[:num_syllables]
    @name = if @num_syllables == 2
      "#{atts[:name]} Rabbit"
    else
      atts[:name]
    end
  end

  # def name
  #   if @num_syllables == 2
  #     "#{atts[:name]} Rabbit"
  #   else
  #     atts[:name]
  #   end
  # end

end
