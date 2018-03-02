require 'bcrypt'
require 'data_mapper'
require 'dm-postgres-adapter'

class User

  # attr_reader :password

  include DataMapper::Resource

  has n, :spaces

  property :id,         Serial
  property :username,   String, required: true, unique: true
  property :email,      String, format: :email_address, required: true, unique: true
  property :password,   String, :length => 60, required: true
  # property :password_digest, Text
  #
  # validates_confirmation_of :password
  #
  # def password=(password)
  #   @password = password
  #   self.password_digest = BCrypt::Password.create(password)
  # end
  #
  def self.authenticate(username, password)
    first(username: username)
    first(password: password)
  end

end
