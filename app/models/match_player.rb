class MatchPlayer < ActiveRecord::Base
  belongs_to :player
  belongs_to :match

  def initialize(params)
    super(params)
    self.goals = 0
    self.red_cards = 0
    self.yellow_cards = 0
  end
end