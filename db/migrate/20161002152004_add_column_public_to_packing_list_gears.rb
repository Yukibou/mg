class AddColumnPublicToPackingListGears < ActiveRecord::Migration[5.0]
  def change
    add_column :packing_lists, :public, :boolean, default: false, nil: false
  end
end
