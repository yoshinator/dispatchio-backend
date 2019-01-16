class Location < ApplicationRecord
  has_many :jobs
  belongs_to :company
  has_many :customers, through: :jobs
  has_many :users
  has_many :teams

end
