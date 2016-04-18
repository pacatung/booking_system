class AddIndexAndRenameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :fb_uid, :uid
  end
end
