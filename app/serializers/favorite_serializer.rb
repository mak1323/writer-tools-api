class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :adjective, :noun, :comment
  has_one :user
end
