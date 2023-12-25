require 'date'

def age_calculator(date)
  birth_date = Date.strptime(date,'%d-%m-%Y')
  current_date = Date.today
  age = "Your age is #{current_date.year - birth_date.year}"
end

puts "Enter the date of bith"
date = gets.chomp.to_s
puts age_calculator(date)