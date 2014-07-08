class AddCityProvincePostalCodeToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :city, :string
    add_column :transactions, :province, :string
    add_column :transactions, :postal_code, :string
  end
end
