class User
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
    birth_year = date_of_birth.split('-').last.to_i
    current_year = Time.now.year
    current_year - birth_year
  end

  def self.create_users(user_data_list)
    user_objects = []
    user_data_list.each do |user_data|
      user_objects << User.new(user_data)
    end
    user_objects
  end

  def self.find_by_first_name(user_list, target_name)
    user_list.select { |user| user.first_name.downcase == target_name.downcase }
  end
end

class Buyer < User
  def self.find_buyers(user_list)
    user_list.select { |user| user.role.downcase == 'buyer' }
  end

  def self.toys_buyable(user, product_list, budget)
    affordable_toys = []
    product_list.each do |product_data|
      if product_data[:category] == 'toys' && product_data[:price] <= budget
        affordable_toys << product_data
      end
    end
    affordable_toys
  end
end

class Seller < User
  def self.find_sellers(user_list)
    user_list.select { |user| user.role.downcase == 'seller' }
  end
end

class Product
  attr_accessor :product_name, :seller_name, :price, :category

  def initialize(product_data)
    @product_name = product_data[:name]
    @seller_name = product_data[:seller]
    @price = product_data[:price]
    @category = product_data[:category]
  end

  def self.create_products(product_data_list)
    product_objects = []
    product_data_list.each do |product_data|
      product_objects << Product.new(product_data)
    end
    product_objects
  end

  def self.total_price_by_category(product_list, category)
    total_price = 0
    product_list.each do |product|
      total_price += product.price if product.category.downcase == category.downcase
    end
    total_price
  end
end

# Raw data for buyers, sellers, and products
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

# Create user and product objects
users = User.create_users(users_data)
products = Product.create_products(products_data)

# Task 1: Get a list of user objects
user_objects = users

# Task 2: Get a list of product objects
product_objects = products

# Task 3: Get the full name of a buyer
buyer = users.find { |user| user.first_name == 'Sundar' && user.role == 'buyer' }
buyer_full_name = buyer.full_name

# Task 4: Get the full name of a buyer/seller
seller = users.find { |user| user.first_name == 'alex' && user.role == 'seller' }
seller_full_name = seller.full_name

# Task 5: Calculate the age of a buyer/seller
buyer_age = buyer.age
seller_age = seller.age

# Task 6: Find all the buyers
buyers = Buyer.find_buyers(users)

# Task 7: Find all the sellers
sellers = Seller.find_sellers(users)

# Task 8: Find all users whose first name is 'alex'
alex_users = User.find_by_first_name(users, 'alex')

# Task 9: Find the number of sellers and buyers whose first name is 'alex'
alex_sellers = Seller.find_sellers(alex_users)
alex_buyers = Buyer.find_buyers(alex_users)

# Task 10: Find the total price of products in the 'toys' category
total_price_toys = Product.total_price_by_category(products, 'toys')

# Task 11: Calculate how many toys Sundar Pichai can buy with a budget of 1000
toys_sundar_can_buy = Buyer.toys_buyable(users.find { |user| user.full_name == 'Sundar Pichai' }, products, 1000)

# Print the results
puts "Task 1: User objects - #{user_objects}"
puts "Task 2: Product objects - #{product_objects}"
puts "Task 3: Full name of a buyer - #{buyer_full_name}"
puts "Task 4: Full name of a seller - #{seller_full_name}"
puts "Task 5: Buyer age - #{buyer_age}, Seller age - #{seller_age}"
puts "Task 6: Buyers - #{buyers}"
puts "Task 7: Sellers - #{sellers}"
puts "Task 8: Users with first name 'alex' - #{alex_users}"
puts "Task 9: Number of sellers with first name 'alex' - #{alex_sellers.size}, Number of buyers with first name 'alex' - #{alex_buyers.size}"
puts "Task 10: Total price of 'toys' - #{total_price_toys}"
puts "Task 11: Toys Sundar Pichai can buy with 1000 budget - #{toys_sundar_can_buy}"
