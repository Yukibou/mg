class User < ApplicationRecord
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, if: :new_record?

  has_many :packing_lists, dependent: :delete_all
  has_many :gears, -> { order(category_id: :asc, title: :asc) }, dependent: :delete_all

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
