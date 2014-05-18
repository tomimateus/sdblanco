class Match < ActiveRecord::Base
  belongs_to :matchday
  has_many :match_teams
  has_many :match_players

  validates :match_teams, length: { is: 2 }

  def initialize(params)
    super(params)
    self.played = false
  end

  def play
    self.played = true
  end

  def local
    match_teams[0].team
  end

  def visit
    match_teams[1].team
  end

  def update_result(local_data, visit_data)
    local_goals = local_data[0]
    local_yellows = local_data[1]
    local_reds = local_data[2]
    visit_goals = visit_data[0]
    visit_yellows = visit_data[1]
    visit_reds = visit_data[2]
    match_players.each do |match_player|
      if local_goals!='' && visit_goals!=''
        if match_player.player.team == local
          match_player.goals = local_goals.to_i
          match_player.yellow_cards = local_yellows.to_i
          match_player.red_cards = local_reds.to_i
        else
          match_player.goals = visit_goals.to_i
          match_player.yellow_cards = visit_yellows.to_i
          match_player.red_cards = visit_reds.to_i
        end
        match_player.save
        play
        self.save
      end
    end
    update_statistics if played
  end

  def update_statistics
    local_statistics = local.statistics(matchday.tournament.id)
    visit_statistics = visit.statistics(matchday.tournament.id)
    local_goals = local.goals(id)
    local_yellows = local.yellow_cards(id)
    local_reds = local.red_cards(id)
    visit_goals = visit.goals(id)
    visit_yellows = visit.yellow_cards(id)
    visit_reds = visit.red_cards(id)
    local_statistics.played += 1
    visit_statistics.played += 1
    if local_goals > visit_goals
      local_statistics.points += 3
      local_statistics.won += 1
      visit_statistics.lost += 1
    elsif local_goals < visit_goals
      visit_statistics.points += 3
      local_statistics.lost += 1
      visit_statistics.won += 1
    else
      local_statistics.points += 1
      visit_statistics.points += 1
      local_statistics.tied += 1
      visit_statistics.tied += 1
    end
    local_statistics.goals_scored += local_goals
    local_statistics.goals_received += visit_goals
    local_statistics.yellow_cards += local_yellows
    local_statistics.red_cards += local_reds
    visit_statistics.goals_scored += visit_goals
    visit_statistics.goals_received += local_goals
    visit_statistics.yellow_cards += visit_yellows
    visit_statistics.red_cards += visit_reds
    local_statistics.save
    visit_statistics.save
  end
end