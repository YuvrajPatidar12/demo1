require 'date'

module User_handler
  
  def full_name(users)
    users.map{ |user| puts "The First name is #{user.first_name}, 
    last name is #{user.last_name} and full name is #{user.first_name.capitalize} #{user.last_name.capitalize}.\n" 
    }
  end
  
  def age(users)
    users.map do |user|
      birth_date = Date.strptime(user.date_of_birth, '%d-%m-%Y')
      current_date = Date.today
      age = current_date.year - birth_date.year
      puts "#{user.first_name.capitalize} #{user.last_name.capitalize}' age is #{age}\n"
    end
  end

  def self.all_users(user_data)
    user_objects = []
    user_data.each do |user|
      user_objects << User.new(user)
    end
    user_objects
  end

  def self.find_by_first_name(users, name)
    users.select {|user| user.first_name.downcase == name.downcase}
  end
end

module Seller_handler

  def all_sellers(users)
    users.select{|data| data if data.role == 'seller'}
  end
end

module Buyer_handler
  
  def all_buyers(users)
    users.select{|data| data if data.role == 'buyer'}
  end
end

module Product_handler
  
  def self.all_products(product_data)
    product_objects = []
    product_data.each do |product|
      product_objects << Product.new(product)
    end
    product_objects
  end

  def self.total_price_by_category(products, category)
    total_price = 0
    products.each do |product|
      if product.category.downcase == category.downcase
        total_price += product.price
      end
    end
    total_price
  end
end

class User
  extend User_handler
  attr_accessor :first_name, :last_name, :date_of_birth, :address, :role

  def initialize(users_data)
    @first_name = users_data[:first_name]
    @last_name = users_data[:last_name]
    @date_of_birth = users_data[:date_of_birth]
    @address = users_data[:address]
    @role = users_data[:role]
  end
end

class Seller < User
  extend Seller_handler
end

class Buyer < User
 extend Buyer_handler
end

class Product
  include Product_handler
  attr_accessor :name, :seller, :price, :category

  def initialize(product_data)
    @product_name = product_data[:name]
    @seller = product_data[:seller]
    @price = product_data[:price]
    @category = product_data[:category]
  end
end

# user data
users_data = [
  {:first_name => 'alex', :last_name => 'newman', :date_of_birth => '01-05-1982', :address => 'sapna sangeeta', :role => 'buyer'},
  {:first_name => 'alex', :last_name => 'Panc', :date_of_birth => '12-04-1990', :address => 'bhanwar kua', :role => 'seller'},
  {:first_name => 'Meena', :last_name => 'Pallanipppan', :date_of_birth => '03-02-1988', :address => 'sapna sangeeta', :role => 'seller'},
  {:first_name => 'Prabhu', :last_name => 'Sharma', :date_of_birth => '11-02-1992', :address => 'geeta bhawan', :role => 'seller'},
  {:first_name => 'Sundar', :last_name => 'Pichai', :date_of_birth => '11-05-1983', :address => 'vijay nagar', :role => 'buyer'}
]
# prodcut data
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

users = User_handler.all_users(users_data)
products = Product_handler.all_products(products_data)
 
# task 1 list of user objects
user_objects = User_handler.all_users(users_data)
puts user_objects.inspect  + "\n"


# tast 2 list of product objects
product_objects = Product_handler.all_products(products_data)
puts product_objects.inspect + "\n"


# task 3 Get the full name of all buyer
user_buyer = users.select {|user| user.role == 'buyer'}
User.full_name(user_buyer)


# task 4 Get the full name of all seller
user_seller = users.select {|user| user.role == 'seller'}
User.full_name(user_seller)


# task 5 Calculate the Buyer/Seller Age
buyer_age = users.select {|user| user.role == 'buyer'}
buyer = User.age(buyer_age)
seller_age = users.select {|user| user.role == 'seller'}
seller = User.age(seller_age)


# task 6 Get the object of all buyer
all_buyers = Buyer.all_buyers (users)
all_buyers.each{|buyer| p buyer}


# task 7 All seller Data in object
all_seller = Seller.all_sellers (users)
all_seller.each{|seller| p seller}

# task 8 all the users whose first name is 'alex'
alex_users = User_handler.find_by_first_name(users, 'alex')
alex_users.each{|user| p user}

# task 9 all the users whose first name is 'alex' and count the user
sellers_and_buyers_with_name_alex = users.count {|user| user.first_name.downcase == 'alex'}
puts "The total number of Buyers/ seller whose first name is 'alex': #{sellers_and_buyers_with_name_alex}\n"

# task 10 The total price of product who have 'Toys' category
total_price_toys = Product_handler.total_price_by_category(products, 'toys')
puts "The total price of toys categories: $#{total_price_toys}/-\n"

# task 11 How many toys Sundar Pichai can buy with an amount of 1000
sundar = users.select{|buyer| "#{buyer.first_name.capitalize} #{buyer.last_name.capitalize}" == 'Sundar Pichai'}
toys = products.select {|product| product.category.downcase == 'toys'}
toys_sundar_can_buy = toys.count {|toy| toy.price <= 1000}
puts "Sundar Pichai can buy #{toys_sundar_can_buy}\n"