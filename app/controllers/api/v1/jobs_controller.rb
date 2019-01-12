class Api::V1::JobsController < ApplicationController
  before_action :find_job, only: [:show, :update, :destroy]

  def index 
    @jobs = Job.all
    render json: @jobs, status: :ok
  end 

  def show
    render json: @job, status: :accepted
  end

  def users_job_by_date
    all_jobs = Job.where(schedule_date: params[:job][:schedule_date])
    @jobs = []
    all_jobs.each do |job| 
      job.team.users.each do |user|
        if user.id == params[:job][:user_id]
          @jobs << job
        end 
      end 
    end 
    render json: @jobs, status: :ok
  end

  def jobs_by_date
    @jobs = Job.where(schedule_date: params[:job][:schedule_date])
    render json: @jobs, status: :ok
  end

  def create
    @job = Job.find_by(jobs_params) 
    if @job
      render json: @job, status: :ok
    else @job = Job.create(jobs_params)
      if @job.valid?
        render json: @job, status: :created
      else
        render json: { errors: @job.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end


  def update
    @job.update(jobs_params)
    if @job.save
      render json: @job, status: :accepted
    else
      render json: { errors: @job.errors.full_messages }, status: :unprocessible_entity
    end
  end


  def destroy
    
    @job.destroy
    render json: {"job": "deleted"}, status: :accepted
  end

  private

  def jobs_params
    params.require(:job).permit(:id, :customer_id, :location_id, :team_id, :street_1, :street_2, :city, :zip, :state, :price, :schedule_date, :schedule_time, :start_time, :end_time, :status, :payment_type, :paid, :user_id)
  end 

  def find_job
    @job = Job.find(params[:id])
  end 

end
