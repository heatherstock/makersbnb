require 'data_mapper'
require 'dm-postgres-adapter'

class User
  include DataMapper::Resource

  property :id,         Serial
  property :username,   String
  property :email,      String
  property :password,   String, :length => 60

  def self.authenticate(username, password)
    first(username: username)
  end
  
end
