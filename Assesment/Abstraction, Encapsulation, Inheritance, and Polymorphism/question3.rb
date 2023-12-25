class Vehicle
  attr_accessor :brand, :model

  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  def info
    puts "Brand: #{brand}"
    puts "Model: #{model}"
  end
end

class Car < Vehicle
  attr_accessor :color

  def initialize(brand, model, color)
    super(brand, model)
    @color = color
  end

  def info
    super
    puts "Color: #{color}"
  end
end

# Example usage
vehicle = Vehicle.new("Toyota", "Camry")
car = Car.new("Honda", "Civic", "Blue")

puts "Vehicle Info:"
vehicle.info

puts "\nCar Info:"
car.info
