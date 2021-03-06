# Player Class
class Player
  attr_reader :role, :race, :gender, :alignment, :attributes
  attr_accessor :hitpoints, :max_hitpoints, :power, :maxpower

  def initialize(options)
    @role = options[:role]
    @race = options[:race]
    @gender = options[:gender]
    @alignment = options[:alignment]

    @attributes = AttributeGenerator.new(role).attributes

    @hitpoints = role.hitpoints + race.hitpoints
    @max_hitpoints = hitpoints
    @power = role.power + rand(role.rand_power + 1) + race.power
    @max_power = power
  end
end
