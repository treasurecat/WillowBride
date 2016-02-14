class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :url
      t.text :summary
      t.binary :picture

      t.timestamps null: false
    end
  end
end
