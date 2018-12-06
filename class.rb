COOKIES = []
CAKES = []
MUFFINS = []
PRODUCTS = []

class Products
  attr_accessor :name, :description, :price, :quantity, :images
  def initialize(name, description, price, quantity, images)
    @name = name
    @description = description
    @price = price
    @quantity = quantity
    @images = images

    PRODUCTS << self
  end
end

class Cookie < Products
  def initialize(name, description, price, quantity, images)
    super(name, description, price, quantity, images)
    COOKIES << self
  end

  def related_products
    $rel_products = COOKIES[rand(COOKIES.length)]
    # return $rel_products
  end

end

class Cake < Products
  def initialize(name, description, price, quantity, images)
    super(name, description, price, quantity, images)
    CAKES << self
  end
end

class Muffin < Products
  def initialize(name, description, price, quantity, images)
    super(name, description, price, quantity, images)
    MUFFINS << self
  end
end
