Project 17

1- 1. Create a model file called “car.rb”

Rubis:) cd /Users/Sedclerk/Desktop/company 
Rubis:) rails g model car
      invoke  active_record
      create    db/migrate/20140115072930_create_cars.rb
      create    app/models/car.rb
      invoke    test_unit
      create      test/models/car_test.rb
      create      test/fixtures/cars.yml

 2- 2. Create a database migration that creates a “cars” table. The cars table should “make, model” 

 

class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.text :make
      t.text :model
      t.timestamps
    end
  end
end

then :
Rubis:) rake db:migrate
==  CreateCars: migrating =====================================================
-- create_table(:cars)
   -> 0.0270s
==  CreateCars: migrated (0.0271s) ============================================

inside the database :

mysql> desc cars;
+------------+----------+------+-----+---------+----------------+
| Field      | Type     | Null | Key | Default | Extra          |
+------------+----------+------+-----+---------+----------------+
| id         | int(11)  | NO   | PRI | NULL    | auto_increment |
| make       | text     | YES  |     | NULL    |                |
| model      | text     | YES  |     | NULL    |                |
| created_at | datetime | YES  |     | NULL    |                |
| updated_at | datetime | YES  |     | NULL    |                |
+------------+----------+------+-----+---------+----------------+
5 rows in set (0.00 sec)


3-3. Using the rails console, do the following:

Rubis:) rails console
Loading development environment (Rails 4.0.1)

a) a) Create a new car 

irb(main):001:0> c = Car.create
   (0.1ms)  BEGIN
  SQL (0.3ms)  INSERT INTO `cars` (`created_at`, `updated_at`) VALUES ('2014-01-15 07:39:13', '2014-01-15 07:39:13')
   (0.3ms)  COMMIT
=> #<Car id: 1, make: nil, model: nil, created_at: "2014-01-15 07:39:13", updated_at: "2014-01-15 07:39:13">
  irb(main):002:0> c.make= "NISSAN"
=> "NISSAN"
irb(main):003:0> c.model= "URVAN"
=> "URVAN"
irb(main):004:0> c.save
   (0.3ms)  BEGIN
  SQL (2.7ms)  UPDATE `cars` SET `make` = 'NISSAN', `model` = 'URVAN', `updated_at` = '2014-01-15 07:42:15' WHERE `cars`.`id` = 1
   (0.4ms)  COMMIT
=> true

b) b) Find an existing car from the database

irb(main):005:0> c=Car.find(1)
  Car Load (0.5ms)  SELECT `cars`.* FROM `cars` WHERE `cars`.`id` = 1 LIMIT 1
=> #<Car id: 1, make: "NISSAN", model: "URVAN", created_at: "2014-01-15 07:39:13", updated_at: "2014-01-15 07:42:15">

c- c) Update an existing car (change the make and model)

irb(main):006:0> c=Car.find(1)
  Car Load (0.5ms)  SELECT `cars`.* FROM `cars` WHERE `cars`.`id` = 1 LIMIT 1
=> #<Car id: 1, make: "NISSAN", model: "URVAN", created_at: "2014-01-15 07:39:13", updated_at: "2014-01-15 07:42:15">
irb(main):007:0> c.make= "BMW"
=> "BMW"
irb(main):008:0> c.model= "E30"
=> "E30"
irb(main):009:0> c.save
   (0.3ms)  BEGIN
  SQL (0.5ms)  UPDATE `cars` SET `make` = 'BMW', `model` = 'E30', `updated_at` = '2014-01-15 07:45:08' WHERE `cars`.`id` = 1
   (2.2ms)  COMMIT
=> true

d- d) Create a couple more cars.

irb(main):010:0> c= Car.create
   (0.3ms)  BEGIN
  SQL (0.4ms)  INSERT INTO `cars` (`created_at`, `updated_at`) VALUES ('2014-01-15 07:45:57', '2014-01-15 07:45:57')
   (1.5ms)  COMMIT
=> #<Car id: 2, make: nil, model: nil, created_at: "2014-01-15 07:45:57", updated_at: "2014-01-15 07:45:57">
irb(main):011:0> c.make= "Nissan"
=> "Nissan"
irb(main):012:0> c.model= "Terrano"
=> "Terrano"
irb(main):013:0> c.save
   (0.3ms)  BEGIN
  SQL (0.6ms)  UPDATE `cars` SET `make` = 'Nissan', `model` = 'Terrano', `updated_at` = '2014-01-15 07:46:42' WHERE `cars`.`id` = 2
   (2.2ms)  COMMIT
=> true
irb(main):014:0> c=Car.create
   (0.2ms)  BEGIN
  SQL (0.3ms)  INSERT INTO `cars` (`created_at`, `updated_at`) VALUES ('2014-01-15 07:46:50', '2014-01-15 07:46:50')
   (1.6ms)  COMMIT
=> #<Car id: 3, make: nil, model: nil, created_at: "2014-01-15 07:46:50", updated_at: "2014-01-15 07:46:50">
irb(main):015:0> c.make= "Mazda"
=> "Mazda"
irb(main):016:0> c.model= "2200"
=> "2200"
irb(main):017:0> c.save
   (0.3ms)  BEGIN
  SQL (0.6ms)  UPDATE `cars` SET `make` = 'Mazda', `model` = '2200', `updated_at` = '2014-01-15 07:48:47' WHERE `cars`.`id` = 3
   (1.8ms)  COMMIT
=> true
irb(main):018:0> c=Car.create
   (0.3ms)  BEGIN
  SQL (0.4ms)  INSERT INTO `cars` (`created_at`, `updated_at`) VALUES ('2014-01-15 07:49:59', '2014-01-15 07:49:59')
   (0.3ms)  COMMIT
=> #<Car id: 4, make: nil, model: nil, created_at: "2014-01-15 07:49:59", updated_at: "2014-01-15 07:49:59">
irb(main):019:0> c.make= "Renault"
=> "Renault"
irb(main):020:0> c.model= "Express"
=> "Express"
irb(main):021:0> c.save
   (0.3ms)  BEGIN
  SQL (0.6ms)  UPDATE `cars` SET `make` = 'Renault', `model` = 'Express', `updated_at` = '2014-01-15 07:50:36' WHERE `cars`.`id` = 4
   (1.8ms)  COMMIT
=> true

e- e) Find all the cars from the database and print out there make and model

irb(main):022:0> c=Car.all
  Car Load (0.5ms)  SELECT `cars`.* FROM `cars`
=> #<ActiveRecord::Relation [#<Car id: 1, make: "BMW", model: "E30", created_at: "2014-01-15 07:39:13", updated_at: "2014-01-15 07:45:08">, #<Car id: 2, make: "Nissan", model: "Terrano", created_at: "2014-01-15 07:45:57", updated_at: "2014-01-15 07:46:42">, #<Car id: 3, make: "Mazda", model: "2200", created_at: "2014-01-15 07:46:50", updated_at: "2014-01-15 07:48:47">, #<Car id: 4, make: "Renault", model: "Express", created_at: "2014-01-15 07:49:59", updated_at: "2014-01-15 07:50:36">]>

d- d) Delete a car

irb(main):023:0> c=Car.find(3)
  Car Load (0.6ms)  SELECT `cars`.* FROM `cars` WHERE `cars`.`id` = 3 LIMIT 1
=> #<Car id: 3, make: "Mazda", model: "2200", created_at: "2014-01-15 07:46:50", updated_at: "2014-01-15 07:48:47">
irb(main):024:0> c.destroy
   (0.3ms)  BEGIN
  SQL (0.5ms)  DELETE FROM `cars` WHERE `cars`.`id` = 3
   (2.2ms)  COMMIT
=> #<Car id: 3, make: "Mazda", model: "2200", created_at: "2014-01-15 07:46:50", updated_at: "2014-01-15 07:48:47">
irb(main):025:0> c=Car.all
  Car Load (0.6ms)  SELECT `cars`.* FROM `cars`
=> #<ActiveRecord::Relation [#<Car id: 1, make: "BMW", model: "E30", created_at: "2014-01-15 07:39:13", updated_at: "2014-01-15 07:45:08">, #<Car id: 2, make: "Nissan", model: "Terrano", created_at: "2014-01-15 07:45:57", updated_at: "2014-01-15 07:46:42">, #<Car id: 4, make: "Renault", model: "Express", created_at: "2014-01-15 07:49:59", updated_at: "2014-01-15 07:50:36">]>
irb(main):026:0> 


Also I updated my rails app called company and upload the content from the database table called Cars. feel free to see it and let me know if it is not good
    
    Thanks
    
    Time : 20 mn


