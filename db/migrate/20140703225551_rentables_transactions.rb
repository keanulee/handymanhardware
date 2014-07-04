class RentablesTransactions < ActiveRecord::Migration
  def change
  	create_table :rentables_transactions, id: false do |t|
      t.belongs_to :rentable
      t.belongs_to :transaction
    end
  end
end
