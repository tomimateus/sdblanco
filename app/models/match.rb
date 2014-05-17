class Match < ActiveRecord::Base
  belongs_to :matchday
  has_many :match_teams
  has_many :match_players

  validates :match_teams, length: { is: 2 }

  def play
    self.played = true
  end

  def local
    match_teams[0].team
  end

  def visit
    match_teams[1].team
  end

  def update_statistics
    local_statistics = local.statistics(matchday.tournament.id)
    visit_statistics = visit.statistics(matchday.tournament.id)
    local_goals = local.goals(id)
    visit_goals = visit.goals(id)
    if local_goals > visit_goals
      local_statistics.points += 3
    elsif local_goals < visit_goals
      visit_statistics.points += 3
    else
      local_statistics.points += 1
      visit_statistics.points += 1
    end
    local_statistics.goals_scored = local_goals
    local_statistics.goals_received = visit_goals
    visit_statistics.goals_scored = visit_goals
    visit_statistics.goals_received = local_goals
    local_statistics.save
    visit_statistics.save
  end
end