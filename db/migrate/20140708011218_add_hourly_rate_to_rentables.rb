class AddHourlyRateToRentables < ActiveRecord::Migration
  def change
    add_column :rentables, :hourly_rate, :decimal
  end
end
