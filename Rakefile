require 'data_mapper'
require 'dm-postgres-adapter'
require './lib/user'
require 'pg'

if ENV['RACK_ENV'] == 'test'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec
  task default: [:spec]
end

task :populate_test_database do
  p 'Populating database!'
  connection = PG.connect(dbname: 'makersbnb_test')
  connection.exec("INSERT INTO users(username, email, password) VALUES('Jim', 'abc@123.com', 'abc123');")
<<<<<<< HEAD
  connection.exec("INSERT INTO spaces(address, price, user_id) VALUES('Makers Court', 100, 1);")
=======
  connection.exec("INSERT INTO properties(address, price, image) VALUES('Makers Court', 5.75, 'https://i.imgur.com/7nkZiho.jpg');")
>>>>>>> master
end
