class Booking < ActiveRecord::Base
  validates_presence_of :lender, :phone, :identify_id, :home_address, :destination, :pickup_date, :return_date
  validates_numericality_of :phone

  belongs_to :user
  belongs_to :bag
end
