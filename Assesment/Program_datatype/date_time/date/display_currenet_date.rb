def display_current_date
  time = Time.new
  puts time
  current_date = time.strftime('%d-%m-%Y')
  puts "The current_date is #{current_date}"
end

display_current_date