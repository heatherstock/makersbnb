require 'sinatra/base'
require 'sinatra/flash'
require './lib/user'
require './lib/space'
require './lib/data_mapper_setup'


class Makersbnb < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  register Sinatra::Flash
  #
  # helpers do
  #   def current_user
  #     @current_user ||= User.get(session[:user_id])
  #   end
  # end

  get '/' do
    @properties = Space.all
    @user = User.get(session[:id])
    erb :index
  end

  get '/users/new' do
    erb :users
  end

  post '/users' do
    user = User.create(email: params['email'], password: params['password'], username: params['username'])
    if user.save
      session[:id] = user.id
      redirect('/')
    else
      flash[:notice] = "NO!"
      redirect('/users/new')
    end
  end

  post '/sessions' do
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:id] = user.id
      redirect('/')
    else
      flash[:notice] = "Incorrect username or password"
      redirect('/')
    end
  end

  post '/sessions/destroy' do
    session.clear
    redirect('/')
  end

  post '/properties' do
    @user = User.get(session[:id])
    Space.create(address: params['address'], price: params['price'], user_id: @user.id, image: params['image'], from_date: params['from'], until_date: params['until'])
    redirect('/')
  end

  get '/profile' do
    @user = User.get(session[:id])
    @properties = Space.all
    erb :profile
  end

  post '/properties/:id/update' do
    @space = Space.get(params['id'])
    @space.update(address: params['address'], price: params['price'])
    redirect('/profile')
  end

  run! if app_file == $PROGRAM_NAME
end
