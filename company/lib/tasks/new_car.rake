
#namespace :car do 
#	desc "Create a new car"
#	task :data => :environment do
 #      require 'mysql2'
  #     st = Mysql.connect 'localhost', 'company', 'Sedclerk13', 'company_development'
   #    mysql.st("INSERT INTO cars(make, model) VALUES ( 'Toyota', 'Trueno)")
#	end
#	
#end
namespace :add do
desc "Create a new car"
task :new_car => :environment do
Car.create(make: "Limo", model: "GTX", description: "4x4")
puts "Succesfully created a new car"
end
end











#namespace :car do 
#	desc "Create a new car"
#	task :data => :environment do
#	require "mysql"
 #     db = Mysql.new('localhost', 'user', 'password', 'database')
  #    db.close
   # end
#end
#rake car:data RAILS_ENV=production





#mysql = Mysql.new(host, user, password, database)
#mysql.query("SELECT ...")
#mysql.close



#      client = Mysql2::Client.new(:host => "localhost", :username => "root")

#results = client.query("SELECT * FROM users WHERE group='githubbers'")
#results = client.query("SELECT * FROM users WHERE group='githubbers'")


# rake car:data


#require 'mysql2'
 #      require 'rubygems'
  #     require 'activerecord'
   #    mysql = Mysql.new(localhost, company, Sedclerk13, company_development)
    #   mysql.query("INSERT INTO cars(make, model) VALUES ( 'Toyota', 'Trueno)")
     #  mysql.close