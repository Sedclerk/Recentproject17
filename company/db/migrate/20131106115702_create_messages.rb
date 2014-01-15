class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :last_name
      t.integer :phone
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
