class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :website

  has_many :locations
end
