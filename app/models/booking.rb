class Booking < ActiveRecord::Base
  validates_numericality_of :phone

  belongs_to :user
  belongs_to :bag
end
