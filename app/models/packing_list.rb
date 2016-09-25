class PackingList < ApplicationRecord
  validates :title, presence: true

  has_many :packing_list_gears, inverse_of: :packing_list, dependent: :destroy
  has_many :gears, through: :packing_list_gears
end
