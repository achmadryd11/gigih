require 'rubygems'
require 'sinatra'

get '/message/:name' do
    name = params['name']
    color = params['price']
    erb :message, locals: {
        name = name,
        color = color
    }
 end

 post '/login' do
    if params[]