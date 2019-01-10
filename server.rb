require "sinatra"
# require "sinatra/reloader"
require "./class.rb"
require "./email.rb"
require "pp"

#Cookies
Cookie.new("Banana Split", "This best-selling favorite, complete with banana dough, butterscotch, chocolate, walnuts, and topped with fresh strawberries, is bananas!", 5.55, 100, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/b/a/banana-split_1.png")
Cookie.new("Chocolate Pecan Caramel", "The deluxe cookie experience with chocolate, pecans, and Rolo candies.", 7.99, 50, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/c/h/chocolate-pecan-caramel_1.png")
Cookie.new("White Chocolate Macadamia", "The old-school grand slam of warm & nutty sweetness!", 6.55, 40, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/w/h/white-chocolate-macadamia.png")
Cookie.new("Peppermint Bark", "A festive holiday favorite made with white chocolate, chocolate, peppermint dough, and real candy canes!", 9.99, 100, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/p/e/peppermint-bark.png")
Cookie.new("Rocky Road", "An ice cream-inspired cookie loaded with almonds, chocolate & marshmallows.", 5.62, 40, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/r/o/rocky-road_1.png")
Cookie.new("White Chocolate Raspberry", "A beautiful, delicately sweet cookie set off by tart fresh raspberry.", 6.98, 55, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/w/h/white-chocolate-raspberry_1.png")

#Cakes
Cake.new("Red Velvet Cake", "Three moist layers of stunning Red Velvet filled and topped silky cream cheese icing and finished with melt-in-your-mouth.", 59.99, 20, "https://static1.squarespace.com/static/538500e4e4b0fa9e95efc7b9/557b25a4e4b00bd15b3b9780/57e181f703596e2bdd42d29c/1474396682672/adj_RedVelvetCake.png?format=1000w")
Cake.new("Cookies 'N Cream Cake", "This cookie-lover’s dream starts with two chewy chocolate brownie layers with cream cheese and broken soft center chocolate cookies.", 25.78, 10, "https://static1.squarespace.com/static/538500e4e4b0fa9e95efc7b9/557b25a4e4b00bd15b3b9780/57e1816f03596e2bdd42cb7c/1474396545621/adj_CookiesNCreamCake.png?format=1000w")
Cake.new("Chocolate Caramel Cake", "This decadent creation boasts three tiers of chocolate cake drenched with our oh-so-good homemade caramel.", 35.49, 20, "https://static1.squarespace.com/static/538500e4e4b0fa9e95efc7b9/557b25a4e4b00bd15b3b9780/57e1813f37c58156a989cd0a/1474396493104/adj_ChocCaramelCake.png?format=1000w")
Cake.new("Glutten-Free Chocolate Almond Cake", "Two layers of moist flourless chocolate almond torte cradle a creamy almond filling all topped with a smooth chocolate almond mousse.", 44.99, 25, "https://static1.squarespace.com/static/538500e4e4b0fa9e95efc7b9/557b25a4e4b00bd15b3b9780/57e1810b46c3c4fc309987a7/1474396447973/adj_GFChocAlmTorte10inch.png?format=1000w")
Cake.new("So Good Chocolate Cake", "Four layers of decadent chocolate cake separated by rich chocolate fudge icing.", 65.99, 30, "https://static1.squarespace.com/static/538500e4e4b0fa9e95efc7b9/557b25a4e4b00bd15b3b9780/57e18227725e25ec2e654698/1474396726700/adj_SoGoodChocCake.png?format=1000w")
Cake.new("Italian Almond Cream Cake", "Two layers of rum soaked buttermilk pound cake filled and frosted with amaretto mascarpone mousse.", 27.99, 10, "https://static1.squarespace.com/static/538500e4e4b0fa9e95efc7b9/557b25a4e4b00bd15b3b9780/5a7078908165f5cb9044082b/1517320422165/Italian+Almond+Cream+Cake+Slice.png?format=1000w")

#Muffins
Muffin.new("Corn Yogurt Muffin", "This rich yogurt muffin is enhanced by a splash of real rum flavour and sits atop a delicious ginger layer.", 3.45, 40, "http://harvestbakery.com/wp-content/uploads/2016/04/CornMuffin_clipped_rev_1.png")
Muffin.new("Chocolate Cupcake", "Our Chocolate cupcake Log is the perfect winter single-serving dessert. ", 3.25, 25, "https://mrsmaxwellspartycakes.com/wp-content/uploads/2017/11/11-Cupcakes-Chocolate.png")
Muffin.new("Berry Fusion Yogurt Muffin", "Succulent yogurt and berry fusion with a caramel center and chocolate genoise base.", 3.23, 30, "http://harvestbakery.com/wp-content/uploads/2016/04/Berry-FusionMuffin_clipped_rev_1.png")
Muffin.new("Cookies & Cream Cupcakes", "Rich chocolate cupcake, with a creamy Oreo cookie frosting, garnished with a sprinkling of Oreo.", 5.33, 20, "http://www.laroccacakes.com/wp-content/uploads/2018/09/300117_A.png")
Muffin.new("Chocolate Chip Yogurt Muffin", "This creamy chocolate chip and yogurt cupcake creation is topped with a thick layer of light.", 4.56, 22, "http://harvestbakery.com/wp-content/uploads/2016/04/ChocChipMuffin_clipped_rev_1.png")
Muffin.new("Vanilla Bean Cupcakes", "Fluffy vanilla cupcake, topped with a swirl of vanilla bean icing and a colourful pink flower.", 4.44, 30, "http://www.laroccacakes.com/wp-content/uploads/2018/09/300135_A.png")

# pp PRODUCTS

def send_email(name,recipient)
  Newsletter.welcome(name, recipient).deliver_now
end

get "/" do
  erb :home
end

post "/" do
  name = params["name"]
  recipient = params["email"]
  send_email(name, recipient)
  erb :home
end

get "/cookies" do
  erb :cookies
end

get "/cakes" do
  erb :cakes
end

get "/muffins" do
  erb :muffins
end

get "/catalog" do
  erb :catalog
end

get "/about" do
  erb :about
end

get "/contact" do
  erb :contact
end

get "/cart" do
  erb :cart
end
