class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :designer_id
      t.string :collection

      t.timestamps null: false
    end
  end
end
