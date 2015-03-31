json.array!(@monsters) do |monster|
  json.extract! monster, :id, :color, :eyes, :diet
  json.url monster_url(monster, format: :json)
end
