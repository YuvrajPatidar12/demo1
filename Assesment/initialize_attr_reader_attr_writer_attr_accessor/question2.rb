class Car
  attr_reader :make
  attr_reader :model
  attr_writer :model

  # attr_accessor :make, :model
  def initialize(make, model)
    @make = make
    @model = model
  end
end


car = Car.new("Toyota", "Camry")

puts "Make: #{car.make}"
puts "Model: #{car.model}"

# Update the model using the setter method
car.model = "Corolla"

puts "Updated Model: #{car.model}"
