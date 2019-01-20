class Customer < ApplicationRecord
  has_many :jobs
  belongs_to :location
end
