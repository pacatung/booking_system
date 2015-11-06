class AddAttachmentImageToBags < ActiveRecord::Migration
  def self.up
    change_table :bags do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :bags, :image
  end
end
