class CreateGears < ActiveRecord::Migration[5.0]
  def change
    create_table :gears do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.string :name
      t.text :detail
      t.integer :weight
      t.text :comment

      t.timestamps
    end
  end
end
