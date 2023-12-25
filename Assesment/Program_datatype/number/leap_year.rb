puts "Enter the full year"
year = gets.to_i

if year % 4 == 0 && year % 100 != 0 || year % 400 ==0
  puts "Leap Year"
else
  puts "Not a Leap Year"
end