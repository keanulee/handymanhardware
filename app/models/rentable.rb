class Rentable < ActiveRecord::Base
  validates_presence_of :name, :image, :description, :hourly_rate, :location, :quantity, :category
end
