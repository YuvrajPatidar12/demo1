require 'date'

# ******************

users_data = [
  {:first_name => 'alex', :last_name => 'newman', :date_of_birth => '01-05-1982', :address => 'sapna sangeeta', :role => 'buyer'},
  {:first_name => 'alex', :last_name => 'Panc', :date_of_birth => '12-04-1990', :address => 'bhanwar kua', :role => 'seller'},
  {:first_name => 'Meena', :last_name => 'Pallanipppan', :date_of_birth => '03-02-1988', :address => 'sapna sangeeta', :role => 'seller'},
  {:first_name => 'Prabhu', :last_name => 'Sharma', :date_of_birth => '11-02-1992', :address => 'geeta bhawan', :role => 'seller'},
  {:first_name => 'Sundar', :last_name => 'Pichai', :date_of_birth => '11-05-1983', :address => 'vijay nagar', :role => 'buyer'}
]

products_data = [
  {:name => 'bicycle', :seller => 'alex', :price => 3000, :category => 'vehicle'},
  {:name => 'car', :seller => 'meena', :price => 250000, :category => 'vehicle'},
  {:name => 'jeans', :seller => 'prabhu', :price => 1800, :category => 'clothes'},
  {:name => 'shirt', :seller => 'prabhu', :price => 700, :category => 'clothes'},
  {:name => 'blue shirt', :seller => 'prabhu', :price => 1200, :category => 'clothes' },
  {:name => 't-shirt', :seller => 'prabhu', :price => 600, :category => 'clothes'},
  {:name => 'capri', :seller => 'prabhu', :price => 300, :category=> 'clothes'},
  {:name => 'bike', :seller => 'meena', :price => 60000, :category => 'vehicle'},
  {:name => 'scooter', :seller => 'meena', :price => 25000, :category=> 'vehicle'},
  {:name => 'maruti', :seller => 'meena', :price => 400000, :category=> 'vehicle'},
  {:name => 'auto', :seller => 'meena', :price => 100000, :category=> 'vehicle'},
  {:name => 'sweater', :seller => 'prabhu', :price => 1200, :category=> 'clothes'},
  {:name => 'jacket', :seller => 'prabhu', :price => 3500, :category=> 'clothes'},
  {:name => 'hat', :seller => 'prabhu', :price => 400, :category=> 'clothes'},
  {:name => 'doll', :seller => 'alex', :price => 350, :category=> 'toys'},
  {:name => 'toy car', :seller => 'alex', :price => 250, :category=> 'toys'},
  {:name => 'bat', :seller => 'alex', :price => 700, :category=> 'toys'},
  {:name => 'ball', :seller => 'alex', :price => 20, :category=> 'toys'},
  {:name => 'batman', :seller => 'alex', :price => 300, :category=> 'toys'},
  {:name => 'barbi doll', :seller => 'alex', :price => 3000, :category=> 'toys'}
]
#********************



module User_module
  def find_by_first_name(users, name)
    users.select { |user| user.first_name.downcase == name.downcase }
  end
end
module Fullname_module
  def full_name(users)
    users.map{ |user| puts "The First name is #{user.first_name}, last name is #{user.last_name} and full name is #{user.first_name.capitalize} #{user.last_name.capitalize}."}  
  end
end

module Age_module
  def age(users)
    users.map do |user| 
      birth_date = Date.strptime(user.date_of_birth ,'%d-%m-%Y')
      current_date = Date.today 
      age = current_date.year - birth_date.year
      puts "#{user.first_name.capitalize} #{user.last_name.capitalize}' age is #{age}"
    end
    
  end
end

module Create_user_object_module
  def all_users(users_data)
    user_objects = []
    users_data.each do |user|
      user_objects << User.new(user)
    end
    user_objects
  end
end
module Seller_module
  def all_sellers(users_data)
    users_data.map{|data| data if users_data[:role] == 'seller' }
  end
end


module Buyer_module
  def all_buyers(users_data)
    users_data.map{|data| data if users_data[:role] == 'buyer'}
  end
end

module Product_module
  def all_products(product_data)
    product_data.map{|data| Product.new(data)}
  end
  def totalprice_category(product_data, category)
    product_data.select{|data| data.category.downcase == category.downcase}.sum{|data| data.price}
  end
end

module Product_data_object_module
  def all_products(product_data)
    product_objects = []
    product_data.each do |product|
      product_objects << Product.new(product)
    end
    product_objects
  end
end 

module Total_price
  def total_price_by_category(product_list)
    total_price = 0
    product_list.each do |product|
      total_price += product.price
    end
    total_price
  end
end

class User
  extend User_module
  extend Create_user_object_module
  extend Fullname_module
  extend Age_module
  attr_accessor :first_name, :last_name, :date_of_birth,:address,:role
  def initialize(users_data)
    @first_name = users_data[:first_name]
    @last_name = users_data[:last_name]
    @date_of_birth = users_data[:date_of_birth]
    @address = users_data[:address]
    @role = users_data[:role]
  end
end

class Seller < User
  extend Seller_module
end
class Buyer < User
  
  extend Buyer_module
end

class Product
  include Product_module
  extend Product_data_object_module
  extend Total_price
  attr_accessor :name,:seller,:price,:category
  def initialize(product_data)
    @product_name = product_data[:name]
    @seller = product_data[:seller]
    @price = product_data[:price]
    @category = product_data[:category]
  end
end

users = User.all_users(users_data)
products = Product.all_products(products_data)

def Operations  
  puts "Press 1: list of user objects"
  puts "Press 2: list of product objects."
  puts "Press 3: Get the full name of all buyer"
  puts "Press 4: Get the full name of all sellor"
  puts "Press 5: Calculate the Buyer/Seller Age"
  puts "Press 6: Get the object of all buyer"
  puts "Press 7: Get the object of all seller"
  puts "Press 8: Get the objects of all user whose first name is alex"
  puts "Press 9: Get the objects of all user whose first name is alex and count"
  puts "Press 10: the total price of products that have the 'toys' category."
  puts "Press 11: How many toys Sundar Pichai can buy with an amount of 1000."
  puts "Press 12: Exit Account"
end

while true do
  Operations()
  puts
  puts "Enter your choice"
  choice = gets.chomp.to_i
  case choice
  when 1
    puts "\n **** All user Object ****"
    user_object = User.all_users(users_data)
    user_object = user_object.each{|each_user| p each_user}
    puts 
  when 2
    puts "\n **** All Product Object ****"
    product_objects = Product.all_products(products_data)
    product_objects = product_objects.each{|each_product| p each_product}
    puts
  when 3
    puts "\n****Full Name of Buyers****"
    user_buyer = users.select { |user| user.role == 'buyer' }
    User.full_name(user_buyer)
    puts
  when 4
    puts "\n**** Full Name of Seller****"
    user_seller = users.select { |user| user.role == 'seller' }
    User.full_name(user_seller)
    puts 
  when 5
    puts "**** The age of Buyers ****" 
    buyer_age = users.select { |user| user.role == 'buyer' }
    buyer = User.age(buyer_age)
    puts
  when 6
    puts "\n**** All Buyer Data in object ****" 
    all_buyers = users.select { |user| user.role == 'buyer' }
    all_buyers.each{|buyer| p buyer}
    puts
  when 7
    puts "\n**** All seller Data in object ****"
    all_sellers = users.select{ |user| user.role == 'seller'}
    all_sellers.each{|seller| p seller}
    puts 
  when 8
    puts "\n**** all the users whose first name is 'alex' ****"
    all_users = User.find_by_first_name(users, 'alex')
    # all_users = users.select{ |user| user.first_name == 'alex'}
    all_users.each{|element| p element}
    puts 
  when 9
    puts "\n**** all the users whose first name is 'alex' and count the user ****"
    all_users = users.select{ |user| user.first_name == 'alex'}
    all_users.each{|element| p element}
    
    p "There are #{all_users.count} user whose first_name is alex"
    puts
  when 10
    puts 
    product_list = products.select{ |product| product.category == "toys"}
    puts "Tthe total price of products that have the 'toys' category is #{Product.total_price_by_category(product_list)}"
    puts 
  when 11
    puts 
    sundar = users.select{ |buyer| "#{buyer.first_name.capitalize} #{buyer.last_name.capitalize}" == 'Sundar Pichai' }
    toys = products.select { |product| product.category.downcase == 'toys' }
    toys_sundar_can_buy = toys.count { |toy| toy.price <= 1000 }  
    puts "Sundar Pichai can buy #{toys_sundar_can_buy}"  
  when 12
    break
  else
    puts "Invalid Choice"
  end
end
