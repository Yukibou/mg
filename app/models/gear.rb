class Gear < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :name, presence: true
  validates :weight, presence: true, numericality: true
  validates :user, presence: true

  mount_uploader :image, ImageUploader

  def display_name
    "#{title} / #{name}"
  end
end
