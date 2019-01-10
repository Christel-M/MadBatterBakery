COOKIES = []
CAKES = []
MUFFINS = []
PRODUCTS = []
CART = {}

class Product
  attr_accessor :name, :description, :price, :quantity, :images
  def initialize(name, description, price, quantity, images)
    @name = name
    @description = description
    @price = price
    @quantity = quantity
    @images = images

    PRODUCTS << self
  end

  def add_to_cart(name, price, qty)
    CART << self
    cart = Cart.new(name, price, qty)
    puts cart;
  end

end

class Cookie < Product
  def initialize(name, description, price, quantity, images)
    super(name, description, price, quantity, images)
    COOKIES << self
  end

  def related_products
    $rel_products = COOKIES[rand(COOKIES.length)]
    # return $rel_products
  end

end

class Cake < Product
  def initialize(name, description, price, quantity, images)
    super(name, description, price, quantity, images)
    CAKES << self
  end
end

class Muffin < Product
  def initialize(name, description, price, quantity, images)
    super(name, description, price, quantity, images)
    MUFFINS << self
  end
end

# class Cart
#   attr_accessor :name, :price, :quantity
#   def initialize(name, price, qty)
#     @name = name
#     @price = price
#     @qty = qty
#
#     CART << self
#   end
#
# end
