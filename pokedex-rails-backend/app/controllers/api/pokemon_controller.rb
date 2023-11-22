class Api::PokemonController < ApplicationController
    def types
        render json: [
            "fire",
            "electric",
            "normal",
            "ghost",
            "psychic",
            "water",
            "bug",
            "dragon",
            "grass",
            "fighting",
            "ice",
            "flying",
            "poison",
            "ground",
            "rock",
            "steel"
          ]
    end

    def index
        @pokemon = Pokemon.all
        render :index
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id]) # = Pokemon.find(params[:id])
        if @pokemon
            render json: @pokemon
        else
            render json: { error: 'Pokemon not found' }, status: :not_found
        end
    end
end
