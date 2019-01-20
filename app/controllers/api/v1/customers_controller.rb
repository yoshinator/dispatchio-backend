class Api::V1::CustomersController < ApplicationController
    before_action :find_customer, only: [:show, :update, :destroy]

  def index 
    @customers = Customer.all
    render json: @customers, status: :ok
  end 

  def show
    render json: @customer, status: :accepted
  end

  def create
    @customer = Customer.find_by(customer_params) 
    if @customer
      render json: @customer, status: :ok
    else @customer = Customer.create(customer_params)
      if @customer.valid?
        render json: @customer, status: :created
      else
        render json: { errors: @customer.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end

    def by_location

    @customers = Customer.where(location_id: params[:customers][:location_id])

    render json: @customers, status: :ok
  end

  def update
    @customer.update(customer_params)
    if @customer.save
      render json: @customer, status: :accepted
    else
      render json: { errors: @customer.errors.full_messages }, status: :unprocessible_entity
    end
  end


  def destroy
    
    @customer.destroy
    render json: {"customer": "deleted"}, status: :accepted
  end

  private

  def customer_params
    params.require(:customer).permit(:id, :customer_id, :location_id, :team_id, :street_1, :street_2, :city, :zip, :state, :price, :schedule_date, :schedule_time, :start_time, :end_time, :status, :payment_type, :paid)
  end 

  def find_customer
    @customer = Customer.find(params[:id])
  end 
end
