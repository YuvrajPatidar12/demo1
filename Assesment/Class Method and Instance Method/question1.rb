class MathUtils
  # Class method to find the square of a number
  def self.square(number)
    number * number
  end

  # Instance method to add two numbers
  def add(a, b)
    a + b
  end

  # Class method to calculate the factorial of a number
  def self.factorial(n)
    if n == 0
      1
    else
      n * factorial(n - 1)
    end
  end
end

# Example usage of class methods
square_result = MathUtils.square(5)
factorial_result = MathUtils.factorial(5)

# Example usage of instance method
math_util = MathUtils.new
add_result = math_util.add(3, 4)

puts "Square of 5: #{square_result}"
puts "Factorial of 5: #{factorial_result}"
puts "Add 3 and 4: #{add_result}"
