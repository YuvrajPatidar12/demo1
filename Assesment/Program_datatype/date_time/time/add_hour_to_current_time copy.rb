def add_hour_to_current_time(hour)
  current_time = Time.now
  new_time = current_time + (hour * 3600)

  return new_time
end
puts "Enter the hour number to add on current time"
hour_to_add = gets.chomp.to_i

new_time = add_hour_to_current_time(hour_to_add)
puts "Current time: #{Time.now.strftime("%H:%M:%S")}"
puts "Time after adding #{hour_to_add} hour: #{new_time.strftime("%H:%M:%S")}"
