class AddAttachmentGalleryImageToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :gallery_image
    end
  end

  def self.down
    remove_attachment :stores, :gallery_image
  end
end
