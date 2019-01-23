class Api::V1::TeamUsersController < ApplicationController
  
  def create
    @team_user = TeamUser.find_by(teamuser_params)
    if @team_user
      render json: @team_user, status: :ok
    else @team_user = TeamUser.create(teamuser_params)
      if @team_user.valid?
        render json: @team_user.team, status: :created
      else
        render json: { errors: @team_user.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end 

  def destroy
    @team_user = TeamUser.find_by(team_id: params[:team_user][:team_id], user_id: params[:team_user][:user_id])
    @team=Team.find(params[:team_user][:team_id])
    @team_user.destroy
    render json: @team, status: :ok
  end 

  
  private

  def teamuser_params
    params.require(:team_user).permit(:id, :location_id, :user_id, :team_id)
  end 


end
