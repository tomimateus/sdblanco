class Tournament < ActiveRecord::Base
  has_many :matchdays
  has_many :statistics

  validates :name, presence: true
end
