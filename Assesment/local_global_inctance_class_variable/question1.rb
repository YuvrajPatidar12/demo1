def print_square(number)

  square = number * number
  
  puts "The square of #{number} is: #{square}"
end

puts "Enter the number"
num = gets.chomp.to_i
print_square(num)
