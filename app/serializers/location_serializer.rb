class LocationSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :city
  has_many :users
  belongs_to :company
end
