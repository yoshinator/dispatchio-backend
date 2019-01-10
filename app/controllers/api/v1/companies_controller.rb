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
    @company = Company.find_by(company_params) 
    if @user
      render json: @company, status: :ok
    else @company = Company.create(company_params)
      if @company.valid?
        render json: @company, status: :created
      else
        render json: { errors: @companies.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end


  def update
    @company.update(company_params)
    if @company.save
      render json: @company, status: :accepted
    else
      render json: { errors: @company.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def company_params
    params.require(:company).permit(:id, :name, :phone, :website)
  end 

  def find_company
    @company = Company.find(params[:id])
  end 

end