namespace :add do
desc "Update a car"
task :update_car => :environment do
c = Car.find(2)
c.update_attributes(
	:make => "Ford",
	:model => "Aveo",
	:description => "Cool")
puts "Succesfully updated a car"
end
end