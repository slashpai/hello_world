# app.rb

require 'sinatra'

# routes
get '/' do
  erb :home
end

get '/about' do
  erb :about
end
