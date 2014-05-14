json.array!(@match_teams) do |match_team|
  json.extract! match_team, :id, :local, :match_id, :team_id
  json.url match_team_url(match_team, format: :json)
end
