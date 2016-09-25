class AddImageToGears < ActiveRecord::Migration[5.0]
  def change
    add_column :gears, :image, :string
  end
end
