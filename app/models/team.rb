class Team < ApplicationRecord
  has_many :team_users
  has_many :jobs
  has_many :users, through: :team_users 
  belongs_to :location
end
