# app.rb

require 'sinatra/base'
require 'sinatra/reloader'

# SinatraApp class

class MyApp < Sinatra::Base
  # for auto reloading website
  configure :development do
    register Sinatra::Reloader
  end
  # routes
  # this will show the home page
  get '/' do
    erb :home
  end

  # this will show about page
  get '/about' do
    erb :about
  end

  # this will print a random number between 1 and 6 (dynamic content)
  get '/number' do
    "Your number is #{rand(1..6)}"
  end

  # dynamic route, params hash will contain all route variables
  get '/hello/:name' do
    "Hello #{params[:name].capitalize}"
  end

  get '/cat' do
    send_file 'cat.html'
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
