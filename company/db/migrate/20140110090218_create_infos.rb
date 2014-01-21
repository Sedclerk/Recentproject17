class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :car_name
      t.text :distance
      t.text :type
      t.string :colour
      t.text :steering
      t.string :fuel
      t.integer :seats
      t.integer :year
      t.integer :price

      t.timestamps
    end
  end
end

