class AddAttachmentMainImageToDesigners < ActiveRecord::Migration
  def self.up
    change_table :designers do |t|
      t.attachment :main_image
    end
  end

  def self.down
    remove_attachment :designers, :main_image
  end
end
