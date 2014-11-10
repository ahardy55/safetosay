json.array!(@news_updates) do |news_update|
  json.extract! news_update, :id
  json.url news_update_url(news_update, format: :json)
end
