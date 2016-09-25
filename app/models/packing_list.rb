class PackingList < ApplicationRecord
  validates :title, presence: true

  has_many :packing_list_gears, inverse_of: :packing_list, dependent: :destroy
  has_many :gears, through: :packing_list_gears

  accepts_nested_attributes_for :packing_list_gears, allow_destroy: true
  REGISTRABLE_ATTRIBUTES = %i(title comment)

  def total_weight
    self.gears.map(&:weight).sum
  end
end
