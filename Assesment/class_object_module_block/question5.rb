module Logger
  
  def log(event)
    puts "Logging: #{event}"
  end
end

class User
  include Logger

  def login
    log("User logged in")
    
  end
end

class Product
  include Logger

  def create
    log("Product created")
    
  end
end

# Example usage
user = User.new
user.login

product = Product.new
product.create
