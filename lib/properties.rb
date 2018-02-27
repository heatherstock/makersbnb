require 'data_mapper'
require 'dm-postgres-adapter'

class Properties
  include DataMapper::Resource

  property :id,         Serial
  property :address,    String
  property :price,      Float

end
