require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :new
  end

  post "/puppy" do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age].to_i)

    erb :puppy
  end

end
