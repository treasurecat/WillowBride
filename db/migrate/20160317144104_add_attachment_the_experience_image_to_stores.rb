class AddAttachmentTheExperienceImageToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :the_experience_image
    end
  end

  def self.down
    remove_attachment :stores, :the_experience_image
  end
end
