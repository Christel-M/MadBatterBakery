require "sinatra"
require "sinatra/reloader"
require "./class.rb"
# require "./email.rb"
require "pp"

#Cookies
Cookie.new("Banana Split", "This best-selling favorite, complete with banana dough, butterscotch, chocolate, walnuts, and topped with fresh strawberries, is bananas!", 5.55, 100, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/b/a/banana-split_1.png")
Cookie.new("Chocolate Pecan Caramel", "The deluxe cookie experience with chocolate, pecans, and Rolo candies.", 7.99, 50, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/c/h/chocolate-pecan-caramel_1.png")
Cookie.new("White Chocolate Macadamia", "The old-school grand slam of warm & nutty sweetness!", 6.55, 40, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/w/h/white-chocolate-macadamia.png")
Cookie.new("Peppermint Bark", "A festive holiday favorite made with white chocolate, chocolate, peppermint dough, and real candy canes!", 9.99, 100, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/p/e/peppermint-bark.png")
Cookie.new("Rocky Road", "An ice cream-inspired cookie loaded with almonds, chocolate & marshmallows.", 5.62, 40, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/r/o/rocky-road_1.png")
Cookie.new("White Chocolate Raspberry", "A beautiful, delicately sweet cookie set off by tart fresh raspberry.", 6.98, 55, "https://milkjarcookies.com/pub/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/w/h/white-chocolate-raspberry_1.png")


# pp PRODUCTS


get "/" do
  erb :home
end
# 
# post "/" do
#   name = params["name"]
#   recipient = params["email"]
#   send_email(name, recipient)
#   erb :home
# end

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
