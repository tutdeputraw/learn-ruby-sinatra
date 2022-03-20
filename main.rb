require 'sinatra'
require_relative 'config/config'
require_relative 'helpers/item_helper'
require_relative 'models/item'

controller = ItemHelper.new

get '/items/new' do
  erb :item_add
end

get '/items' do
  erb :item_index, locals: {
    items: controller.get_items
  }
end

post '/items/new' do
  item = Item.new(name: params['name'],
                  price: params['price'],
                  category: params['category'])

  controller.add_item(item)

  redirect '/items/new'
end

