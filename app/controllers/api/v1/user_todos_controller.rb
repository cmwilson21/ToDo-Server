class Api::V1::UserTodosController < ApplicationController
  # skip_before_action :authorized 
  before_action :set_user_todo, only: [:show, :update, :destroy]

  # GET /user_todos
  def index
    @user_todos = UserTodo.all

    render json: @user_todos
  end

  # GET /user_todos/1
  def show
    render json: @user_todo
  end

  # POST /user_todos
  def create
    @user_todo = UserTodo.new(user_todo_params)

    if @user_todo.save
      render json: @user_todo, status: :created
    else
      render json: @user_todo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_todos/1
  def update
    if @user_todo.update(user_todo_params)
      render json: @user_todo
    else
      render json: @user_todo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_todos/1
  def destroy
    @user_todo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_todo
      @user_todo = UserTodo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_todo_params
      params.permit(:user_id, :todo_id)
    end
end
