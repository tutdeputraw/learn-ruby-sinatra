require 'sinatra'
require_relative 'config/config'
require_relative 'controllers/item_controller'
require_relative 'models/item'

item_controller = ItemController.new

get '/items/new' do
  erb :"item/item_add"
end

get '/items' do
  erb :"item/item_index", locals: {
    items: item_controller.get_items
  }
end

post '/items/new' do
  item = Item.new(name: params['name'],
                  price: params['price'],
                  category: params['category'])

  item_controller.add_item(item)

  redirect '/items/new'
end

