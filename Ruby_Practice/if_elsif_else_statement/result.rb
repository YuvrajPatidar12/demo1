puts "Enter the marks of Hindi"
hindi = gets.to_i
puts "Enter the marks of English"
english = gets.to_i
puts "Enter the marks of Maths"
maths = gets.to_i
puts "Enter the marks of Science"
science = gets.to_i
puts "Enter the marks of Social Science"
social_science = gets.to_i

total = hindi + english + maths + science + social_science
puts "Your Total Marks is #{total}."
percent = (total * 100)/500
puts "Your percent is #{percent}%."

if percent >=91 && percent <= 100
  puts "Your grade is Very Good."
elsif percent >=71 && percent <= 90
  puts "Your grade is Good."
elsif percent >=51 && percent <= 70
    puts "Your grade is Average."
elsif percent >=33 && percent <= 50
      puts "Your grade is Pass."
elsif percent >=0 && percent <= 32
    puts "Your grade is Fail."
else
  puts "You Enter the wrong number."
end