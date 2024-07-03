class UsersController < ApplicationController
  protect_from_forgery with: :null_session

  include UsersHelper

  def index
    if params[:search].present?
      @users = User.where(filter_users_query(params[:search])).paginate(page: page, per_page: per_page).decorate
    else
      @users = User.all.order('created_at DESC').paginate(page: page, per_page: per_page).decorate
    end
    render json: { users: @users }, status: :ok
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      render json: { user: @user, message: "User created successfully!" }, status: :ok
    else
      render json: {message: "User not created."}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:users).permit(:name, :email, campaigns_list: [:campaign_name, :camp_id])
  end
end
