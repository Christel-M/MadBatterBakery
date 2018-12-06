require "sinatra"
require "sinatra/reloader"
require "./class.rb"
require "pp"

$cookie = Cookie.new("cookie", "this is a cookie", 4, 100, "images/logo.png")
$cookie2 = Cookie.new("cookie2", "this is another cookie", 4, 100, "images/logo.png")
$cake = Cake.new("cake", "this is a cake", 4, 100, "images/logo.png")
$cake2 = Cake.new("cake2", "this is another cake", 4, 100, "images/logo.png")
$muffin = Muffin.new("muffin", "this is a muffin", 4, 100, "images/logo.png")
$muffin2 = Muffin.new("muffin2", "this is another muffin", 4, 100, "images/logo.png")

# pp PRODUCTS

get "/" do
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
