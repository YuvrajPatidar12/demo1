puts "Enter the number1"
num1 = gets.chomp.to_i

puts "Enter the number 2"
num2 = gets.chomp.to_i
puts "The multiplication Table"
for i in ( num1..num2 )
  
  for j in ( 1..10 )
    puts "#{ i } * #{ j } = #{ i*j }"
  end
  puts()
end