json.array!(@contacts) do |contact|
  json.extract! contact, :id, :email, :address, :city, :state, :zip
  json.url contact_url(contact, format: :json)
end
