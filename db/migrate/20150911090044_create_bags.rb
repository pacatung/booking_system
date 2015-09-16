class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|

      t.string :location
      t.string :brand
      t.string :model
      t.boolean :is_rented

      t.timestamps null: false
    end
  end
end
