class AddAttachmentImageToCartazs < ActiveRecord::Migration
  def self.up
    change_table :cartazs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cartazs, :image
  end
end
