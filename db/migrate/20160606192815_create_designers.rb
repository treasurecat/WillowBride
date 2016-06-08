class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.text :description
      t.binary :main_image
      t.string :location1
      t.string :location2
      t.string :location3

      t.timestamps null: false
    end
  end
end
