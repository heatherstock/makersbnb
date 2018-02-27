require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'user'
require_relative 'space'

if ENV['RACK_ENV'] == 'test'
  DataMapper.setup(:default, 'postgres://localhost/makersbnb_test')
  DataMapper.finalize
  DataMapper.auto_migrate!
else
  DataMapper.setup(:default, 'postgres://localhost/makersbnb')
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
