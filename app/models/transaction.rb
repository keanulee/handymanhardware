class Transaction < ActiveRecord::Base
	has_and_belongs_to_many :rentables

  validates_presence_of :name, :address, :phone, :start_at, :end_at
end
