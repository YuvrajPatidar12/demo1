module MathHelper
  def square(number)
    number * number
  end

  def cube(number)
    number * number * number
  end
end

class Calculator
  include MathHelper

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    if b != 0
      a.to_f / b
    else
      "Cannot divide by zero."
    end
  end
end


calculator = Calculator.new

result_square = calculator.square(5)
result_cube = calculator.cube(3)

puts "Square of 5: #{result_square}"
puts "Cube of 3: #{result_cube}"

result_add = calculator.add(10, 7)
result_subtract = calculator.subtract(15, 6)
result_multiply = calculator.multiply(8, 4)
result_divide = calculator.divide(20, 4)

puts "10 + 7 = #{result_add}"
puts "15 - 6 = #{result_subtract}"
puts "8 * 4 = #{result_multiply}"
puts "20 / 4 = #{result_divide}"
