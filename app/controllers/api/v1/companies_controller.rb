class Api::V1::CompaniesController < ApplicationController
  before_action :find_company, only: [:show, :update]

  def index 
    @companies = Company.all
    render json: @companies, status: :ok
  end 

  def show
    render json: @company, status: :accepted
  end

  def create
    @company = Company.find_by(name: company_params[:company][:name]) 
    @user = User.find(company_params[:user][:id])
    if @company
      render json: @company, status: :ok
    else @company = Company.create(company_params[:company])
         @location = Location.create(nickname: company_params[:location][:nickname], city: company_params[:location][:city], company_id: @company.id)

      if @company.valid? && @location.valid?
        @user.update(location_id: @location.id)
        render json: @company, status: :created
      else
        render json: { errors: @company.errors.full_messages, errors: @location.errors.full_message }, status: :unprocessible_entity
      end
    end
  end


  def update
    @company.update(company_params[:company])
    if @company.save
      render json: @company, status: :accepted
    else
      render json: { errors: @company.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def company_params
    params.permit(company: [:name, :phone, :website], location: [:nickname, :city], user: [:id])
  end 

  def find_company
    @company = Company.find(params[:id])
  end 

end