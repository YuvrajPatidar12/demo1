def maximun(num1,num2,num3)
  max = (num1>num2)? (num1>num3 ? num1 : num3):(num2 > num3 ? num2 : num3)
  return "The maximum of #{num1}, #{num2}, and #{num3} is #{max}."
end

puts "Enter the first number"
num1 = gets.chomp.to_i

puts "Enter the second number"
num2 = gets.chomp.to_i

puts "Enter the third number"
num3 = gets.chomp.to_i

puts maximun(num1,num2, num3)