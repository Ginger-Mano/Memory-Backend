class CardsController < ApplicationController

    def index
        cards = Card.all 
        render json: cards
    end

    def create 
        card = Card.create(card_params)
        render json: card
    end

    private
    def card_params
        params.require(:card).permit(:term_name, :definition, :image, :points, :image_front, :game_id)
    end




end
