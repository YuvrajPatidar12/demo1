require 'date'

module UserModule
  attr_accessor :first_name, :last_name, :date_of_birth, :address, :role

  def initialize(user_data)
    @first_name = user_data[:first_name]
    @last_name = user_data[:last_name]
    @date_of_birth = user_data[:date_of_birth]
    @address = user_data[:address]
    @role = user_data[:role]
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def age
    birth_date = Date.strptime(date_of_birth, '%d-%m-%Y')
    current_date = Date.today
    age = current_date.year - birth_date.year
    age
  end

  def self.all_users(user_data)
    user_data.map { |data| User.new(data) }
  end

  def self.find_by_first_name(users, name)
    users.select { |user| user.first_name.downcase == name.downcase }
  end
end

module SellerModule
  def self.all_sellers(users)
    users.select { |user| user.role == 'seller' }
  end
end

module BuyerModule
  def self.all_buyers(users)
    users.select { |user| user.role == 'buyer' }
  end
end

module ProductModule
  attr_accessor :product_name, :seller_name, :price, :category

  def initialize(product_data)
    @product_name = product_data[:name]
    @seller_name = product_data[:seller]
    @price = product_data[:price]
    @category = product_data[:category]
  end

  def self.all_products(product_data)
    product_data.map { |data| Product.new(data) }
  end

  def self.total_price_by_category(products, category)
    products
      .select { |product| product.category.downcase == category.downcase }
      .sum { |product| product.price }
  end
end

class User
  include UserModule
end

class Seller < User
  include SellerModule
end

class Buyer < User
  include BuyerModule
end

class Product
  include ProductModule
end

# Raw data for users and products
users_data = [
  {:first_name => 'alex', :last_name => 'newman',  :date_of_birth => '01-05-1982',  :address => 'sapna sangeeta', :role => 'buyer'},
  {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth => '12-04-1990',  :address => 'bhanwar kua', :role => 'seller'},
  {:first_name => 'Meena', :last_name => 'Pallanipppan', :date_of_birth => '03-02-1988', :address => 'sapna sangeeta', :role => 'seller'},
  {:first_name => 'Prabhu', :last_name => 'Sharma', :date_of_birth => '11-02-1992', :address => 'geeta bhawan', :role => 'seller'},
  {:first_name => 'Sundar', :last_name => 'Pichai', :date_of_birth => '11-05-1983', :address => 'vijay nagar', :role => 'buyer'}
]

products_data = [
  {:name => 'bicycle', :seller => 'alex', :price => 3000, :category => 'vehicle'},
  {:name => 'car', :seller => 'meena', :price => 250000, :category => 'vehicle'},
  # Add more product data here
]

users = users_data.map { |user_data| User.new(user_data) }
products = products_data.map { |product_data| Product.new(product_data) }

# Example usage of the methods
# 1. List of user objects
user_objects = UserModule.all_users(users_data)
puts user_objects
puts ()
# 2. List of product objects
product_objects = ProductModule.all_products(products_data)
puts product_objects
puts ()
# 3. Full name of a buyer
buyer = users.find { |user| user.role == 'buyer' }
buyer_full_name = buyer.full_name
puts buyer_full_name
puts()
# 4. Full name of a seller
seller = users.find { |user| user.role == 'seller' }
seller_full_name = seller.full_name
puts seller_full_name
puts()
# 5. Age of a buyer/seller
age = buyer.age
puts age
puts()
# 6. List of buyers
buyers = BuyerModule.all_buyers( users )
buyers.each{ |buyer| p buyer }
puts()
# 7. List of sellers
sellers = SellerModule.all_sellers( users )
sellers.each{ |seller| p seller }
puts
# 8. Users with first name 'alex'
users_with_name_alex = UserModule.find_by_first_name(users, 'alex')
users_with_name_alex.each{ |user| p user }
puts()
# 9. Number of sellers and buyers with first name 'alex'
sellers_and_buyers_with_name_alex = users.count { |user| user.first_name.downcase == 'alex' }
puts sellers_and_buyers_with_name_alex
# 10. Total price of products in 'toys' category
total_price_toys = ProductModule.total_price_by_category(products, 'toys')
puts total_price_toys

# 11. Number of toys Sundar Pichai can buy with $1000
sundar = buyers.find { |buyer| buyer.full_name == 'Sundar Pichai' }
toys = products.select { |product| product.category.downcase == 'toys' }
toys_sundar_can_buy = toys.count { |toy| toy.price <= 1000 }

puts "Sundar Pichai can buy #{toys_sundar_can_buy} toys with $1000."
