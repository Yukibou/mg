class CreatePackingListGears < ActiveRecord::Migration[5.0]
  def change
    create_table :packing_list_gears do |t|
      t.references :packing_list, foreign_key: true
      t.references :gear, foreign_key: true

      t.timestamps
    end
  end
end
