def calculate(num1, num2, operator)
  case operator
  when :+
    puts "Addition: #{num1 + num2}"
  when :-
    puts "Subtraction: #{num1 - num2}"
  when :*
    puts "Multiplication: #{num1 * num2}"
  when :/
    if num2 != 0
      puts "Division: #{num1.to_f / num2}"
    else
      "Cannot divide by zero."
    end
  else
    "Invalid operator"
  end
end

puts "Enter the first number"
num1 = gets.chomp.to_i
puts "Enter the secomd Number"
num2 = gets.chomp.to_i
puts "Enter the operation like(+,-,*,/)"
operator = gets.chomp.to_sym

calculate(num1, num2, operator)
