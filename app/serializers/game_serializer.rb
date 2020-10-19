class GameSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :user
  has_one :card
end
