class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :category_id, :canPurchase, :soldOut
end
