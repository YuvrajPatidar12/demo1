def curret_time
  time = Time.new
  time_now = "#{time.hour}:#{time.min}:#{time.sec}"
end
puts curret_time