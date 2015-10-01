class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.text :identify_id
      t.text :home_address
      t.text :destination

      t.timestamps null: false
    end
  end
end
