
def leap_year(year)
  if year % 4 == 0 and year % 100 != 0 or year % 400 ==0
    return "Leap Year"
  else
    return "Not a Leap Year"
  end
end
puts "Enter the full year"
year = gets.to_i

puts leap_year(year)