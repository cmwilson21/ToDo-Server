class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :get_current_user]
  # before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
   # signup
   def create
    @user = User.new(user_params)
    if @user.save
      @token = encode_token(user_id: @user.id)
      # binding.pry
      render json: {user: UsersSerializer.new(@user), jwt: @token}, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
      # render json: {errors: ["Please fill in each field."]}
    end
  end

  def get_current_user
    if logged_in?
      render json: {user: current_user}, status: :ok
      # binding.pry
    else
      render json: {errors: ["User not logged in."]}, status: :ok
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:email, :password, :username, :first_name, :last_name, :is_adult, :date_of_birth)
    end
end
