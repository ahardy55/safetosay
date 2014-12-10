json.array!(@musics) do |music|
  json.extract! music, :id, :link, :title, :release_date
  json.url music_url(music, format: :json)
end
