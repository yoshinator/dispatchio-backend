class Api::V1::TeamsController < ApplicationController
  before_action :find_team, only: [:show, :update, :destroy]

  def index 
    @teams = Team.all
    render json: @teams, status: :ok
  end 

  def show
    render json: @team, status: :accepted
  end

  def create
    @team = Team.find_by(team_params) 
    if @team
      render json: @team, status: :ok
    else @team = Team.create(team_params)
      if @team.valid?
        render json: @team, status: :created
      else
        render json: { errors: @team.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end

  def by_location
    @teams = Team.where(location_id: params[:team][:location_id])

    render json: @teams, status: :ok
  end

  def update
    @team.update(team_params)
    if @team.save
      render json: @team, status: :accepted
    else
      render json: { errors: @team.errors.full_messages }, status: :unprocessible_entity
    end
  end


  def destroy
    
    @team.destroy
    render json: {"team": "deleted"}, status: :accepted
  end

  private

  def team_params
    params.require(:team).permit(:id, :name, :location_id)
  end 

  def find_team
    @team = Team.find(params[:id])
  end 

end
