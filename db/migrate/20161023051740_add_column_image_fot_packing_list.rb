class AddColumnImageFotPackingList < ActiveRecord::Migration[5.0]
  def change
    add_column :packing_lists, :image, :string
  end
end
