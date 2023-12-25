def multiply_number(num1,num2)
  result = num1*num2
  return result
end

puts "Enter the number1"
num1 = gets.chomp.to_i
puts "Enter the number2"
num2 = gets.chomp.to_i

puts "The result is #{multiply_number(num1, num2)}"