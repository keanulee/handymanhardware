class CreateRentables < ActiveRecord::Migration
  def change
    create_table :rentables do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :location
      t.integer :quantity
      t.string :category

      t.timestamps
    end
  end
end
