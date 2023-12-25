puts "Enter the number"
num1 = gets.chomp.to_i
puts "Enter the number"
num2 = gets.chomp.to_i
def divide(dividend,divisor)
  begin
    raise ZeroDivisionError.new 'Number must be grater than zero' if divisor ==0
    puts "#{dividend} is divided by #{divisor} than the result is #{dividend/divisor}."
    
  rescue ZeroDivisionError => e
      puts e.message
  end
  puts 'thankyou'
end
divide(num1,num2)