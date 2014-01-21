namespace :add do
desc "Destroy a car"
task :destroy_car => :environment do
	Car.find(9).destroy
	puts "Succesfully destroyed a car number 9"
end
end