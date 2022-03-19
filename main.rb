# frozen_string_literal: true
require 'sinatra'
require_relative 'config'

get '/' do
  'This is the home page. You will see this if you don\'t specify any specific route.'
end

get '/messages' do
  "<h1 style=\"background-color:DodgerBlue;\">Hello world!</h1>"
end

get '/messages/:name' do
  name = params['name']
  color = params['color'] ? params['color'] : 'DodgerBlue'

  erb :message, locals: {
    name: name,
    color: color
  }
end

get '/login' do
  erb :login
end

post '/login' do
  if params['username'] == 'admin' && params['password'] == 'admin'
    return 'logged in'
  else
    redirect '/login'
  end
end


