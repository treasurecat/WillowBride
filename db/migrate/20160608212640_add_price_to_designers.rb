class AddPriceToDesigners < ActiveRecord::Migration
  def change
    add_column :designers, :price, :string
  end
end
