class AddUserIdToGears < ActiveRecord::Migration[5.0]
  def change
    add_reference :gears, :user, index: true
  end
end
