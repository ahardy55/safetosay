json.array!(@shows) do |show|
  json.extract! show, :id, :venue, :date, :support, :address, :price
  json.url show_url(show, format: :json)
end
