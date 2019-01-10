class Api::V1::LocationsController < ApplicationController
    before_action :find_location, only: [:show, :update, :destroy]

  def index 
    @locations = Location.all
    render json: @locations, status: :ok
  end 

  def show
    render json: @location, status: :accepted
  end

  def create
    @location = Location.find_by(location_params) 
    if @location
      render json: @location, status: :ok
    else @location = Location.create(location_params)
      if @location.valid?
        render json: @location, status: :created
      else
        render json: { errors: @location.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end


  def update
    @location.update(location_params)
    if @location.save
      render json: @location, status: :accepted
    else
      render json: { errors: @location.errors.full_messages }, status: :unprocessible_entity
    end
  end


  def destroy
    
    @location.destroy
    render json: {"location": "deleted"}, status: :accepted
  end

  private

  def location_params
    params.require(:location).permit(:id, :city, :nickname, :company_id)
  end 

  def find_location
    @location = Location.find(params[:id])
  end 

end
