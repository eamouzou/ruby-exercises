#run through and break down each line for each way of doing it
#Resource: https://stackoverflow.com/questions/2680523/dry-ruby-initialization-with-hash-argument/2681014
#Resource: https://www.rubyguides.com/2019/01/ruby-initialize-method/
class Lion < Struct.new(:name, :sound)

  def initialize(h)
    super(*h.values_at(:name, :sound))
  end

  # Attributes = [:name, :sound]
  # Attributes.each { |p| attr_reader p }
  # def initialize(args)
  #   Attributes.each do |p|
  #     self.instance_variable_set "@#{p}", args[p] if not args[p].nil?
  #   end
  # end
end

# class Lion
#   attr_reader :atts, :name, :sound
#
#   def initialize(atts = {})
#     @atts = atts
#     @name = atts[:name]
#     @sound = atts[:sound]
#   end
#
# end
