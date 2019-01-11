class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: {case_sensitive: false}
  has_many :team_users
  has_many :teams, through: :team_users
  belongs_to :location

end
