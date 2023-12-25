require 'date'
def calculate_days_between_dates(start_date, end_date)
  start_date_obj = Date.strptime(start_date,'%d-%m-%Y')
  end_date_obj = Date.strptime(end_date,'%d-%m-%Y')
  days_difference = (end_date_obj - start_date_obj).to_i

  return days_difference
end

puts "Enter the starting Date(DD-MM-YYYY)"
start_date = gets.chomp
puts "Enter the Ending Date(DD-MM-YYYY)"
end_date = gets.chomp

days_difference = calculate_days_between_dates(start_date, end_date)
puts "There are #{days_difference} days between #{start_date} and #{end_date}."
