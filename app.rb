require 'sinatra/base'
require './lib/user'
require './lib/data_mapper_setup'

class Makersbnb < Sinatra::Base
  enable :sessions

  get "/" do
    @user = User.get(session[:id])
    p @user
    erb :index
  end

  get '/users/new' do
    erb :users
  end

  post '/users' do
    user = User.create(email: params['email'], password: params['password'])
    session[:id] = user.id
    p "+++++++++++++"
    p session[:id]
    redirect('/')
  end

  run! if app_file == $0
end
