def multiply_numbers
  puts "Enter the first number:"
  num1 = gets.chomp.to_f

  puts "Enter the second number:"
  num2 = gets.chomp.to_f

  result = yield(num1, num2)
  puts "Product: #{result}"
end

# Call the method and pass a block that multiplies the numbers
multiply_numbers {|num1, num2| num1 * num2}
