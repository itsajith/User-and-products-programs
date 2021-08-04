$LOAD_PATH << '.'
require 'data.rb'

class Product 
  include Info

  def category(element)
    product = all_products
    all_products.each do |product_data|
      product_data.each do |key,value|
        if value == element
          puts "The product is #{product_data[:name]} its price is #{product_data[:price]} sold by #{product_data[:seller]}"
        end
      end
    end
    puts
  end

  def details(element)
    product = all_products
    all_products.each do |product_data|
      product_data.each do |key,value|
        if value == element
          puts product_data.to_s 
        end
      end
    end
    puts
  end
  
end

product = Product.new
product.category('vehicle')
product.details('vehicle')

