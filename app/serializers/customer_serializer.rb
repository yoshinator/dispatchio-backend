class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :poc, :street_1, :street_2, :city, :state, :zip, :phone, :email

  has_many :jobs
end
