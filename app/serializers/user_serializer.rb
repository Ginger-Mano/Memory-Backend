class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :score, :games_won, :games_lost, :time_spent, :avg_score, :image
  has_many :games
end
