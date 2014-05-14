json.array!(@match_players) do |match_player|
  json.extract! match_player, :id, :goals, :red_cards, :yellow_cards, :match_id, :player_id
  json.url match_player_url(match_player, format: :json)
end
