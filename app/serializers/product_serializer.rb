class ProductSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :price, :description, :image, :isOnSale
  has_many :comments



end
