class User 
  attr_accessor :name, :address, :mobile,:balance, :account_number
  def initialize(name, address, mobile,balance=0)
    @name = name
    @address = address
    @mobile = mobile
    @balance = balance
    @account_number = rand(1000000000000..9999999999999)
  end
end

class Banking_operations
  @@users = {} #create hash for store users
  private
  def self.get_input_from_user
    gets.chomp.to_i
  end
  # private :get_input_from_user
  public
  # +++++++++++++++++Create account +++++++++++++++++
  def self.careate_account
    puts "**** Welcome to MyBank ****"
    puts "**** Please create your account ****"
    puts "Enter your name"
    name = gets.chomp
    puts "Enter your address"
    address = gets.chomp
    puts "Enter your mobile number"
    mobile = get_input_from_user
    user = User.new(name, address, mobile)
    @@users[user.account_number] = user
    puts "Account Created. Your accout number is #{user.account_number}"
    puts "**** Thanks for visit MyBank ****"
    # puts "#{@@users}"
  end
  # ++++++++++++++credit amount ++++++++++++++
  def self.credit_amount
    puts "**** Welcome to MyBank ****"
    puts "Enter the account number"
    account_number = get_input_from_user
    user = @@users[account_number]
    # puts user
    if user
      puts "Enter the amount you want to credit"
      amount = gets.chomp.to_f
      user.balance += amount
      puts "Credited $#{amount} to account #{account_number}. Your current balance is $#{user.balance}"
      puts "**** Thanks for visit MyBank ****"
    else
      puts "No Account Number Found. Please Enter Your Account Number Correctly"
      puts "**** Thanks for visit MyBank ****"
    end

  end
  # +++++++++++++Debiet Amount +++++++++++++++
  def self.debit_amount
    puts "**** Welcome to MyBank ****"
    puts "Enter the account number"
    account_number = get_input_from_user
    user = @@users[account_number]
    # puts user
    if user
      puts "Your current balance is $#{user.balance}"
      puts "Enter the amount you want to debit"
      debit_amount = get.chomp.to_f
      if user.balance >= debit_amount
        user.balance -= debit_amount
        puts "debited $#{debit_amount} from your account #{account_number}. Your current balance is $#{user.balance}"
        puts "**** Thanks for visit MyBank ****"
      else
        puts "Insufficient Balance"
        puts "**** Thanks for visit MyBank ****"
      end
    else
      puts "No Account Number Found. Please Enter Your Account Number Correctly"
      puts "**** Thanks for visit MyBank ****"
    end
  end
  # ++++++++++++++++Account details +++++++++++++
  def self.account_details
    puts "**** Welcome to MyBank ****"
    puts "Enter the account number"
    account_number = get_input_from_user
    user = @@users[account_number]
    # puts user
    if user
      puts "****Your Account details****"
      puts "Hello Mrs. #{user.name}"
      puts "Your account number is #{user.account_number}"
      puts "Your Mobile Number is #{user.mobile}"
      puts "Your address is #{user.address}"
      puts "Your current balance is $#{user.balance}"
      puts "**** Thanks for visit MyBank ****"
    else
      puts "No Account Number Found. Please Enter Your Account Number Correctly"
    end
  end
  # +++++++++++++delete account+++++++++++++
  def self.delete_account_details
    puts "**** Welcome to MyBank ****"
    puts "Enter the account number"
    account_number = get_input_from_user
    user = @@users[account_number]
    # puts user
    if user
      @@users.delete(account_number)
      puts "Deleted your account number is #{user.account_number}" 
    else
      puts "No Account Number Found. Please Create Your Account."
    end
  end

  
end

# ++++++++++++ Operations +++++++++++++++++
def Operations
  puts "**** Welcome to MyBank ****"
  puts "Press 1: Create Account"
  puts "Press 2: Credit Amount"
  puts "Press 3: Debit Amount"
  puts "Press 4: Account Details"
  puts "Press 5: Delete Account Details"
  puts "Press 6: Exit Account"
end


while true do
  Operations()
  puts
  puts "Enter your choice"
  choice = Banking_operations.get_input_from_user
  case choice
  when 1
    puts
    Banking_operations.careate_account
    puts 
  when 2
    puts
    Banking_operations.credit_amount
    puts 
  when 3
    puts
    Banking_operations.debit_amount
    puts
  when 4
    puts
    Banking_operations.account_details
    puts
  when 5
    puts
    Banking_operations.delete_account_details
    puts
  when 6
    puts
    puts "**** Thanks for visit MyBank ****"
    break
  else
    puts "Invalid Choice"
  end



  # def get_input_from_user
  #   gets.chomp.to_i
  # end
end
