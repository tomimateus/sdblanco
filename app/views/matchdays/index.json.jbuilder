json.array!(@matchdays) do |matchday|
  json.extract! matchday, :id, :number, :tournament_id
  json.url matchday_url(matchday, format: :json)
end
