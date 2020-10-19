class Card < ApplicationRecord
    has_many :users, through: :game
end
