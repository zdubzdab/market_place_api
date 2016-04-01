class ProductSerializer < ActiveModel::Serializer
  validates :title, :user_id, presence: true
  attributes :id, :title, :price, :published

  has_one :user

  has_many :placements
  has_many :orders, through: :placements
end
