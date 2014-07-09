class Rentable < ActiveRecord::Base
  validates_presence_of :name, :image, :description, :location, :category
  validates_numericality_of :hourly_rate, greater_than_or_equal_to: 0
  validates_numericality_of :quantity, greater_than_or_equal_to: 0
end
