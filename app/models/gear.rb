class Gear < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :name, presence: true
  validates :weight, presence: true, numericality: true
end
