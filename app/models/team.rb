class Team < ActiveRecord::Base
  has_many :statistics
  has_many :players
  has_many :match_teams

  validates :name, presence: true
end