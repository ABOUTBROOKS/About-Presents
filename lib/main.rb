require 'sinatra'
require 'pry_debug'
require 'aboutyou-sdk'
shop = AY.new(301, 'fafb0040b0493af0e90ab48de829c6ae', "awesomeSessionId")

get "/" do
  erb :home, :locals => {:shop => shop}
end

get "/gutschein_verschenken" do
  erb :gutschein_schenken
end

get "/grußkarte" do
  erb :grußkarte, :locals => {:shop => shop}
end

get "/productsResult" do
  erb :productResult, :locals => {:shop => shop}
end

post "/productsResult" do
  erb :productResult, :locals => {:shop => shop}
end

get "/subCategories/:id" do
  
  erb :subCategories, :locals => {:shop => shop, :clickedId => params[:id]}
end