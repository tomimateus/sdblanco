class Statistic < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :team

  before_save :default_values

  def default_values
    self.points = 0
    self.played = 0
    self.won = 0
    self.tied = 0
    self.lost = 0
    self.goals_scored = 0
    self.goals_received = 0
    self.red_cards = 0
    self.yellow_cards = 0
  end
end