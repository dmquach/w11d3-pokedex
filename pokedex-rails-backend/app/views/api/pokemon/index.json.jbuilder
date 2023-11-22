
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
      json.extract! poke, :number, :name, :image_url, :captured
    end
end
  