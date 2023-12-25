class Counter
  attr_accessor :count

  def initialize(initial_count = 0)
    @count = initial_count
  end

  def increment
    @count += 1
    yield 
  end
end

# Example usage
counter = Counter.new

# Increment the count and execute a block of code
counter.increment do
  puts "Count is now: #{counter.count}"
end

counter.increment do
  puts "Count is now: #{counter.count}"
end
