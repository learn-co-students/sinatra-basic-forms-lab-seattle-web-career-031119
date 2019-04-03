require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    puppy_info = Puppy.new(params)
    @name = puppy_info.name
    @breed = puppy_info.breed
    @age = puppy_info.months_old
    erb :display_puppy
  end


end
