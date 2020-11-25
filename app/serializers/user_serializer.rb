class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :room_id
end