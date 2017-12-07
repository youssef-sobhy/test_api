class UsersController < ApplicationController
  before_action :prepare_user, only: %i[show update destroy]

  def index
    users = User.includes(:todos)

    render json: users.as_json(include: :todos), status: :ok
  end

  def show
    render json: @user.as_json(include: :todos), status: :ok
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  def update
    if @user.update(user_params)
      render json: @user.as_json(include: :todos), status: :ok
    else
      render json: @user.errors, status: :bad_request
    end
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :profile_picture)
  end

  def prepare_user
    @user = User.includes(:todos).find(params[:id])
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end
end
