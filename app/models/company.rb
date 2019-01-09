class Company < ApplicationRecord
  has_many :locations
  has_many :users
  validates :name, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true

end
