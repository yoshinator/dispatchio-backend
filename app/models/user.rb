class User < ApplicationRecord
  has_many :team_users
  has_many :teams, through: :team_users
  belongs_to :company

end
