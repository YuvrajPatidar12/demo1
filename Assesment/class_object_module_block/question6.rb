class Product
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def total_price(&block)
    total = price * quantity
    total -= yield(total) if block_given?
    total
  end
end


product = Product.new("Widget", 10.0, 5)

# Calculate the total price without a discount
total_without_discount = product.total_price
puts "Total price without discount: $#{total_without_discount}"

# Calculate the total price with a 20% discount using a block
total_with_discount = product.total_price do |subtotal|
  discount_amount = subtotal * 0.2
  puts "Applied a 20% discount of $#{discount_amount}"
  discount_amount
end

puts "Total price with discount: $#{total_with_discount}"
