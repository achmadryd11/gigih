require 'sinatra'
require-relative './db_connector.rb'

get '/' do
    items = get_all_items
    erb:index, local:{
        items: items
    }
end

get '/items/new' do
    erb:create
end

