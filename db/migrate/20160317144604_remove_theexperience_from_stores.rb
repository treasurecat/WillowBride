class RemoveTheexperienceFromStores < ActiveRecord::Migration
  def change
    remove_column :stores, :theexperience, :string
  end
end
