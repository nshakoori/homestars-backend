class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :room_id, :body
end