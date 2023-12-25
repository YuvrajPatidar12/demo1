def add_minutes_to_current_time(second)
  current_time = Time.now
  new_time = current_time - second

  return new_time
end
puts "Enter the second number to subtract from current time"
subtract_secomd = gets.chomp.to_i

new_time = add_minutes_to_current_time(subtract_secomd)
puts "Current time: #{Time.now.strftime("%H:%M:%S")}"
puts "Time after subtracting #{subtract_secomd} second: #{new_time.strftime("%H:%M:%S")}"
