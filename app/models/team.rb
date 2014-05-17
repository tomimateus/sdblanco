class Team < ActiveRecord::Base
  has_many :statistics
  has_many :players
  has_many :match_teams

  validates :name, presence: true

  def statistics(tournament_id)
    Statistic.find_by_tournament_id_and_team_id(tournament_id, id)
  end

  def goals(match_id)
    player_id = players[0].id
    MatchPlayer.find_by_match_id_and_player_id(match_id, player_id).goals
  end
end