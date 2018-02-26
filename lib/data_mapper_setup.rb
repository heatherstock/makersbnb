require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'user'

if ENV['RACK_ENV'] == 'test'
  DataMapper.setup(:default, 'postgres://localhost/makersbnb_test')
else
  DataMapper.setup(:default, 'postgres://localhost/makersbnb')
end

DataMapper.finalize
DataMapper.auto_migrate!
