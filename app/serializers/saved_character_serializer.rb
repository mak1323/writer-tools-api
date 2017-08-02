class SavedCharacterSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :background, :comment
end
