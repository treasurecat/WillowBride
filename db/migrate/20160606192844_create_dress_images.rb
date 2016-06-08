class CreateDressImages < ActiveRecord::Migration
  def change
    create_table :dress_images do |t|
      t.integer :dress_id
      t.binary :image

      t.timestamps null: false
    end
  end
end
