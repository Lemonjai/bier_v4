json.extract! beerpost, :id, :name, :created_at, :updated_at
json.url beerpost_url(beerpost, format: :json)