class CreatePackingLists < ActiveRecord::Migration[5.0]
  def change
    create_table :packing_lists do |t|
      t.string :title
      t.text :comment

      t.timestamps
    end
  end
end
