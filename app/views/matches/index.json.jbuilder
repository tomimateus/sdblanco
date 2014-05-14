json.array!(@matches) do |match|
  json.extract! match, :id, :played, :matchday_id
  json.url match_url(match, format: :json)
end
