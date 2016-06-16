class AddAttachmentMainImageToDresses < ActiveRecord::Migration
  def self.up
    change_table :dresses do |t|
      t.attachment :main_image
    end
  end

  def self.down
    remove_attachment :dresses, :main_image
  end
end
