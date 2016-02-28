class AddHoursToStores < ActiveRecord::Migration
  def change
    add_column :stores, :hours, :string
  end
end
