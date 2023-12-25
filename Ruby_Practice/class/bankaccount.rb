# Create a class called "BankAccount" with attributes account_number and balance. 
# Implement methods to deposit and withdraw money from the account. Use a block to execute 
# additional actions when a transaction is made


class Bankaccount
  def initialize(account_number, balance)
    @account_number = account_number
    @balance = balance
  end
  
  def deposit(amount)
    @balance += amount
  end
  def withdraw(amount)
    @balance -= amount
    if @balance >= amount
      @balance -= amount
    else
      puts "Insufficient funds"
    end
  end
  def displays
    puts "Account Number: #{@account_number}"
    puts "Balance: #{@balance}"
  end
end

bank = Bankaccount.new(58987690,10000)
# bank.displays
# puts bank.deposit(1000)
puts bank.withdraw(500)
