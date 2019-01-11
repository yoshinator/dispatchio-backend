class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create]


  def index 
    @users = User.all
    render json: @users, status: :ok
  end 

  def show
    render json: @user, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end


  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @company = Company.find(@user.company_id)
    @user.destroy
    render json: @company, status: :accepted
  end

  def sign_in
    "Action not needed at this time"
  end 

    def change_pw
    @user = User.authenticate(current_user.email, user_params[:password])
    if @user.nil?
      render json: { message: 'Invalid username or password'}
    else
      if @user.valid?
        @user.password = user_params[:user][:new_password] unless params[:user][:new_password].nil? || params[:user][:new_password].empty?
        @user.save
        render json: {message: "Password changed successfully"}
      end  
    end
  end
 

  private

  def user_params
    params.require(:user).permit(:id, :f_name, :l_name, :email, :password, :user_type, :phone, :company_id, :new_password)
  end 

  def find_user
    @user = User.find(params[:id])
  end 

end
