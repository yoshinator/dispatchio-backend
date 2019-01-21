class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :poc, :street_1, :street_2, :city, :state, :zip, :phone, :email, :location_id

  has_many :jobs
end
