class AddUserToPackingList < ActiveRecord::Migration[5.0]
  def change
    add_reference :packing_lists, :user, add_index: true
  end
end
