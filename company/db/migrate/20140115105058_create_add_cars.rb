class CreateAddCars < ActiveRecord::Migration
  def change
    create_table :add_cars do |t|
      t.text :make
      t.text :model
      t.text :description

      t.timestamps
    end
  end
end
