class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :lender
      t.string :phone
      t.text :identify_id
      t.text :home_address
      t.text :destination
      t.integer :bag_id
      t.date :pickup_date
      t.date :return_date

      t.timestamps null: false
    end
  end
end
