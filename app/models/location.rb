class Location < ApplicationRecord
  has_many :jobs
  belongs_to :company
  has_many :customers
  has_many :users
  has_many :teams

end
