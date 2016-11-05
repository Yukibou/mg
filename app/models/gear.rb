class Gear < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :name, presence: true
  validates :weight, presence: true, numericality: true
  validates :user, presence: true
  validates :category, presence: true

  mount_uploader :image, ImageUploader

  scope :by_category, ->(category_id) { where(category_id: category_id) }

  def display_name
    "【#{category.name}】#{title} / #{name}"
  end
end
