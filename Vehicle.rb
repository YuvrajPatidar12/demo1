class Vehicle
  attr_accessor :brand, :model, :year
  @@total_vehicle = 0

  def initialize(brand, model, year)
    @brand = brand
    @model = model
    @year = year
    @@total_vehicle += 1
  end

  def self.total_vehicles
    @@total_vehicle
  end

  def vehicle_display
    puts "\nname: #{@brand}, model: #{@model}, year:#{@year}"
    tyre
  end

  private
  def tyre
    puts "All vehicle have tyre"
  end
end

# Create Object 
vehicle1 = Vehicle.new("Toyota", "Camry", 2020)
vehicle2 = Vehicle.new("Honda", "Civic", 2021)
vehicle3 = Vehicle.new("Ford", "F-150", 2022)
vehicle4 = Vehicle.new("Mahendra", "Scorpio", 2023)
vehicle5 = Vehicle.new("Suzuki", "Alto", 2019)

# Call the methods using object
vehicle1.vehicle_display
vehicle2.vehicle_display
vehicle3.vehicle_display
vehicle4.vehicle_display
vehicle5.vehicle_display

# Display the Object count
puts "\nThe total number of vehicle are '#{Vehicle.total_vehicles}'."

