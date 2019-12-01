class Parrot
  attr_reader :atts, :name, :known_words, :sound

  def initialize(atts = {})
    @atts = atts
    @name = atts[:name]
    @known_words = atts[:known_words]
    @sound = "Squawk!"
  end

end
