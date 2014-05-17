class Tournament < ActiveRecord::Base
  has_many :matchdays
  has_many :statistics

  validates :name, presence: true

  def update_statistics(matchday_number)
    matchday = matchdays[matchday_number-1]
    matchday.matches.each do |match|
      if match.played
        match.update_statistics
      end
    end
  end
end