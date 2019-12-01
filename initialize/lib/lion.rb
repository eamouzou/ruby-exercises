class Lion
  attr_reader :atts, :name, :sound

  def initialize(atts = {})
    @atts = atts
    @name = atts[:name]
    @sound = atts[:sound]
  end

end



# class Lion < Struct.new(:name, :sound)
#
#   def initialize(h)
#     super(*h.values_at(:name, :sound))
#   end
#
#   # Attributes = [:name, :sound]
#   # Attributes.each { |p| attr_reader p }
#   # def initialize(args)
#   #   Attributes.each do |p|
#   #     self.instance_variable_set "@#{p}", args[p] if not args[p].nil?
#   #   end
#   # end
#
#
# end
