require 'yaml'

module ProductData
  def product_list(data)
    data.each do |data|
      puts data.values
      puts '===='
    end
  end
end

class Product
  include ProductData

  def product_details
    products = YAML.load_file('products_data.yaml')
    product_list(products)
  end
end

product = Product.new
product.product_details
