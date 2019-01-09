class Job < ApplicationRecord
  belongs_to: team
  belongs_to: location
  belongs_to: customer
  has_many: images
end
