require 'data_mapper'
require 'dm-postgres-adapter'

class Space
  include DataMapper::Resource

  property :id,         Serial
  property :address,    String
  property :price,      Float
  property :image,      String

  belongs_to :user # defaults to :required => true

  # def self.popular
  #   all(:user_id.gt => 3)
  # end

end