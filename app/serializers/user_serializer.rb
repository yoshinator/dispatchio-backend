class UserSerializer < ActiveModel::Serializer
  attributes :id, :f_name, :l_name, :email, :phone, :user_type
  belongs_to :location
end
