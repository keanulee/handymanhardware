class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.datetime :start_at
      t.datetime :end_at
      t.datetime :delivered_at
      t.datetime :returned_at
      t.boolean :cancelled
      t.decimal :hours_charged

      t.timestamps
    end
  end
end
