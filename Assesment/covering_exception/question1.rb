def calculate_age(birth_year)
  current_year = Time.now.year
  age = current_year - birth_year

  if age < 0
    raise RuntimeError, "Invalid birth year. Please provide a valid birth year in the past."
  else
    return age
  end
rescue TypeError
  raise RuntimeError, "Invalid input. Please provide a valid birth year as an integer."
end

# Example 
begin
  age = calculate_age(2019) # Provide a valid birth year
  puts "Age: #{age}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
