
=begin
[
  {
    "id": 1,
    "number": 1,
    "name": "Bulbasaur",
    "imageUrl": "/images/pokemon_snaps/1.svg",
    "captured": true
  },
  // ...
]
=end


@pokemon.each do |poke|
    json.set! poke.id do
      json.extract! poke, :number, :name, :captured
      if poke.captured == true
        json.extract! poke, :image_url
      else
        json.image_url = "/images/unknown.png"
      end
    end
end
  