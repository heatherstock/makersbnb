require 'sinatra/base'

class Makersbnb < Sinatra::Base
  enable :sessions

  get "/" do
    @user = User.get(session[:id])
    erb :index
  end

  get '/users/new' do
    erb :users
  end

  post '/users' do
    user = User.create(email: params['email'], password: params['password'])
    session[:id] = user.id
    redirect('/')
  end

  run! if app_file == $0
end
