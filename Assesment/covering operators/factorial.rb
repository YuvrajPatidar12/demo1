def calculate_factorial(number)
  if number < 0
    return "Factorial is not defined for negative number"
  elsif number==0
    return "Fatcorial of #{number} is 1"
  else
    result = 1
    (1..number).each do |num|
      result*=num
    end
    return "The factorial of #{number} is #{result}"
  end
end
puts "Enter the number "
number = gets.chomp.to_i

puts calculate_factorial(number)