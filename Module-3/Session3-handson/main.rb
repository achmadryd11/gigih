require 'sinatra'
require_relative 'item'
require_relative 'category'

get '/' do
    items = Item.get_all_categories
    erb :index, locals:{
        items: items,
    }
end

get '/items/new' do
    categories = Categry.get_all_categories
    erb :create, locals:{
        categories: categories
    }
end

post 'items/create' do 
    name = params['name']
    price = params['price']
    category_id = params['category']
    Item.insert_item_categories(name,price,category_id)
    redirect '/'
end

get '/items/:id' do
    detail_item = Item.delete_item(params['id'])
    