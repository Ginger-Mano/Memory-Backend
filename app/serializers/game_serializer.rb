class GameSerializer < ActiveModel::Serializer
  attributes :id, :status, :user_id, :cards
  # has_one :user
  # has_many :cards
  
end
