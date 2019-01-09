class User < ApplicationRecord
  has_many :team_users
  has_many :teams, through: :team_users
end
