class AddTheExperienceToStores < ActiveRecord::Migration
  def change
    add_column :stores, :the_experience, :string
  end
end
