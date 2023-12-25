class Car
  @@total_cars = 0

  def initialize(brand, model, year)
    @brand = brand
    @model = model
    @year = year
    @@total_cars += 1
  end

  def self.total_cars
    @@total_cars
  end

  def details
    "Brand: #{@brand}, Model: #{@model}, Year: #{@year}"
  end
end

# Example usage
car1 = Car.new("Toyota", "Camry", 2022)
car2 = Car.new("Honda", "Civic", 2023)
car3 = Car.new("Ford", "F-150", 2022)

puts "Total Cars Created: #{Car.total_cars}"

puts "Car 1 Details: #{car1.details}"
puts "Car 2 Details: #{car2.details}"
puts "Car 3 Details: #{car3.details}"
