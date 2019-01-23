class Api::V1::TeamUsersController < ApplicationController
  before_action :find_team, only: [:destroy]
  
  def create
    @teamuser = TeamUser.find_by(teamuser_params)
    if @teamuser
      render json: @teamuser, status: :ok
    else @teamuser = TeamUser.create(teamuser_params)
      if @teamuser.valid?
        render json: @teamuser.team, status: :created
      else
        render json: { errors: @teamuser.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end 

  
  private

  def teamuser_params
    params.require(:team_user).permit(:id, :location_id, :user_id, :team_id)
  end 

  def find_team
    @team = TeamUser.find(params[:id])
  end 
end
