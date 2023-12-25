class BankAccount
  attr_accessor :account_number, :balance

  def initialize(account_number, initial_balance)
    @account_number = account_number
    @balance = initial_balance
  end

  def deposit(amount, &block)
    @balance += amount
    execute_transaction(&block) if block_given?
  end

  def withdraw(amount, &block)
    if @balance >= amount
      @balance -= amount
      execute_transaction(&block) if block_given?
    else
      puts "Insufficient funds to withdraw #{amount}."
    end
  end

  private

  def execute_transaction(&block)
    yield(self) if block_given?
  end
end

# Example usage
account = BankAccount.new("12345", 1000)

# Deposit money with a block
account.deposit(500) do |account|
  puts "Transaction successful."
  puts "Updated balance: #{account.balance}"
end

# Withdraw money with a block
account.withdraw(200) do |account|
  puts "Transaction successful."
  puts "Updated balance: #{account.balance}"
end

# Attempt to withdraw more money than available
account.withdraw(1500) do |account|
  puts "This block will not execute due to insufficient funds."
end
