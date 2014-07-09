class ChangeRentableDescriptionType < ActiveRecord::Migration
  def up
    change_column :rentables, :description, :text, limit: nil
  end

  def down
    # This might cause trouble if you have strings longer
    # than 255 characters.
    change_column :rentables, :description, :string
  end
end
