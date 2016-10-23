class PackingList < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :user, presence: true

  mount_uploader :image, ImageUploader

  has_many :packing_list_gears, inverse_of: :packing_list, dependent: :destroy
  has_many :gears, through: :packing_list_gears

  accepts_nested_attributes_for :packing_list_gears, allow_destroy: true
  REGISTRABLE_ATTRIBUTES = %i(title comment public)

  scope :publish, -> { where(public: true) }

  def total_weight
    self.gears.map(&:weight).sum
  end

  def total_weight_by_category(category)
    self.gears.by_category(category).map(&:weight).sum
  end
end
