class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :adjective, :noun
  # has_one :user
end
