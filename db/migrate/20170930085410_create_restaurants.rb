class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :stars
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
