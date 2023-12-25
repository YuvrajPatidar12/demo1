puts"Enter the first number"
$num1 = gets.to_i
puts "Enter the second number"
$num2 = gets.to_i
puts "Enter the third number"
$num3 = gets.to_i

if $num1 > $num2 && $num1 > $num3
  puts "The greater number is #{$num1}."
elsif $num2 > $num3
  puts "The greater number is #{$num2}."
else  
  puts "The greater number is #{$num3}."
end