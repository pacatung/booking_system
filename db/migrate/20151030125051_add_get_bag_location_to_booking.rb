class AddGetBagLocationToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :get_bag_location, :string
  end
end
