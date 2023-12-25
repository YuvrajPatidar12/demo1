class Vehicle
  def start_engine
    puts "Vehicle engine started."
  end
end

class Car < Vehicle
  def start_engine
    puts "Car engine started."
    super 
  end
end

# Example usage
car = Car.new
car.start_engine
