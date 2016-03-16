class AddAttachmentShopImageToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :shop_image
    end
  end

  def self.down
    remove_attachment :stores, :shop_image
  end
end
