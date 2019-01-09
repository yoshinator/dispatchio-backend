class JobSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :location_id, :team_id, :street_1, :street_2, :city, :zip, :state, :price, :schedule_date, :schedule_time, :start_time, :end_time, :status, :payment_type, :paid
  belongs_to :customer 
  belongs_to :team 
  belongs_to :location 
  has_many :images
end
