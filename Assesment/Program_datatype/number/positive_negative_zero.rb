puts "Enter the number"
num1 = gets.chomp.to_i

def check1( num )
  if num.positive?
    puts "Positive"
  elsif num.negative?
    puts "Negative"
  else
    puts "Zero"
  end
end
check1( num1 )


  
# def check(num1)
#   if num1>0
#     puts "Positive"
#   elsif num1 < 0
#     puts "Negative"
#   else
#     puts "Zero"
#   end
# end
# check( num1 )
