require 'sinatra/base'
require 'sinatra/flash'
require './lib/user'
require './lib/space'
require './lib/data_mapper_setup'


class Makersbnb < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    @properties = Space.all
    @user = User.get(session[:id])
    @username = User.first(:id => '4')
    @users = User.all
    p @properties
    erb :index
  end
  # <% if @user.id == property.user_id %>

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
    session[:id] = user.id
    redirect('/')
  end

  post '/sessions/destroy' do
    session.clear
    redirect('/')
  end

  post '/properties' do
    @user = User.get(session[:id])
    Space.create(address: params['address'], price: params['price'], user_id: @user.id, image: params['image'])
    redirect('/')
  end

  get '/profile' do
    @user = User.get(session[:id])
    @properties = Space.all
    erb :profile
  end

  post '/properties/:id/update' do
    p params['address']
    p params['price']
    @space = Space.get(params['id'])
    p @space
    @space.update(address: params['address'], price: params['price'])
    redirect('/profile')
  end

  run! if app_file == $PROGRAM_NAME
end
