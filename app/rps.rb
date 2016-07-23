require 'sinatra/base'
require './lib/weapon.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = params[:name]
    erb(:play)
  end

  post '/choice' do
    @weapon = Weapon.new(params[:weapon])
    erb(:choice)
  end

  post '/result' do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
