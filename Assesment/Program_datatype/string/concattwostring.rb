def string_concat str, str2
  str.capitalize + " " +str2.capitalize
 end
 puts "Enter the string1"
 str = gets.chomp
 puts "Enter the string2"
 str2 = gets.chomp
 puts string_concat str, str2