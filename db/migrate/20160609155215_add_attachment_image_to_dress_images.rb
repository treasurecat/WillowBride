class AddAttachmentImageToDressImages < ActiveRecord::Migration
  def self.up
    change_table :dress_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dress_images, :image
  end
end
