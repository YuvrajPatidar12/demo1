require 'date'

def display_the_date_from_two_days
  current_date = Date.today
  two_day_ago = current_date -2
  return two_day_ago
end
puts display_the_date_from_two_days