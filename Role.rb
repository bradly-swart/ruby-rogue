# role
class Role
  def self.for_options(_)
    all
  end

  def self.all
    DataLoader.load_file('roles').map do |data|
      binding.pry
      new(data)
    end
  end

  attr_reader :name, :hotkey

  def initilialize(data)
    binding.pry
    data.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end

  def to_s
    name
  end
end
