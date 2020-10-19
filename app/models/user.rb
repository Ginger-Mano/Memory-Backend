class User < ApplicationRecord
    has_many :cards, through: :game
    has_secure_password 
end
