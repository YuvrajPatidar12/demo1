class Counter
  @@count = 0 # Class variable

  def initialize
    @count = 0 # Instance variable
  end

  def increment
    @@count += 1 # Increment the class variable
    @count += 1  # Increment the instance variable
  end

  def decrement
    @@count -= 1 # Decrement the class variable
    @count -= 1  # Decrement the instance variable
  end

  def display_count
    puts "Class Variable (count): #{@@count}"
    puts "Instance Variable (@count): #{@count}"
  end
end

# Example usage
counter1 = Counter.new
counter2 = Counter.new

counter1.increment
counter1.increment
counter2.increment
counter2.increment

counter1.decrement
counter2.decrement

counter1.display_count
counter2.display_count
