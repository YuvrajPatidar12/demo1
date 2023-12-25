def add_minutes_to_current_time(minutes)
  current_time = Time.now
  new_time = current_time + (minutes * 60)

  return new_time
end
puts "Enter the minute number to add on current time"
minutes_to_add = gets.chomp.to_i

new_time = add_minutes_to_current_time(minutes_to_add)
puts "Current time: #{Time.now.strftime("%H:%M:%S")}"
puts "Time after adding #{minutes_to_add} minutes: #{new_time.strftime("%H:%M:%S")}"
