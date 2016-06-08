class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.integer :designer_id
      t.string :location
      t.binary :main_image
      t.float :price
      t.string :style
      t.string :garment_type
      t.string :tag
      t.string :name
      t.string :collection

      t.timestamps null: false
    end
  end
end
