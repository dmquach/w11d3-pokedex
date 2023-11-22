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
end
