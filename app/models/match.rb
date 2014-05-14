class Match < ActiveRecord::Base
  belongs_to :matchday
  has_many :match_teams
  has_many :match_players

  validates :match_teams, length: { is: 2 }
end