json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :points, :played, :won, :tied, :lost, :goals_scored, :goals_received, :red_cards, :yellow_cards, :tournament_id, :team_id
  json.url statistic_url(statistic, format: :json)
end
