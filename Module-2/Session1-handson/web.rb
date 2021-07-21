 require 'rubygems'
 require 'sinatra'


 items = [
     {name: 'Microcontroller', price: 45000},
     {name: 'Arduino Mega', price: 120000},
     {name: 'ESP32', price: 50000}
 ]

 get '/items' do
    erb :items, locals: {
        items: items
    }
end 

post "/items" do
    name = params['name']
    price = params['price']
    items << {name: name, price: price}
    redirect '/items'
end