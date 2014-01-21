namespace :add do
desc "Find a car"
task :find_car => :environment do
    Car.find(7)
	puts "Succesfully found a car number 7"
	puts Car.find(7)
end
end