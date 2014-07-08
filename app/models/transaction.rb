class Transaction < ActiveRecord::Base
	has_and_belongs_to_many :rentables

  validates_presence_of :name, :address, :city, :province, :start_at, :end_at, :rentables
  validates_format_of :email, with: /\A[^@]+@[^@]+\.[^@]+\Z/
  validates_format_of :postal_code, with: /\A[A-Za-z]\d[A-Za-z]\s?\d[A-Za-z]\d\Z/
  validates_format_of :phone, with: /\A\+?1?(\D*\d){10}\D*\Z/

  def hourly_rate
    rentables.sum(:hourly_rate).to_f
  end

  def estimated_hours
    (end_at - start_at) / 1.hour
  end

  def estimated_subtotal
    estimated_hours * hourly_rate
  end

  def subtotal
    hours_charged ? hours_charged * hourly_rate : 0
  end
end
