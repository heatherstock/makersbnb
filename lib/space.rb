require 'data_mapper'
require 'dm-postgres-adapter'

class Space
  include DataMapper::Resource

  property :id,         Serial
  property :address,    String
  property :price,      Float

  belongs_to :user # defaults to :required => true
end
