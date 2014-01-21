


namespace :add do
desc " Create couples of cars "
task :couples_car => :environment do
Car.create(:make => "Lexus 2", :model => "GTD", :description => "Awesome")
  puts "c"
  Car.create(:make=> "Lambourgini", :model => "Airborn", :description => "Super")
puts "a"
  puts "1st works."
end
end