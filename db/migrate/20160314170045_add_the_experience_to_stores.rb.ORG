class AddTheExperienceToStores < ActiveRecord::Migration
  def change
    add_column :stores, :theexperience, :string
  end
end
