class Location < ApplicationRecord
  has_many :jobs
  belongs_to :company
  has_many :customers, through: :jobs
  has_many :users, through: :company
  has_many :teams, through: :job

end
