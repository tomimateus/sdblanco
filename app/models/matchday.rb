class Matchday < ActiveRecord::Base
  belongs_to :tournament
  has_many :matches

  validates :number, presence: true
end