# frozen_string_literal: true

# List all users, create users, filter users
class UsersController < ApplicationController
  protect_from_forgery with: :null_session

  include UsersHelper

  def index
    if params[:search].present?
      search_params = params[:search].split(',')
      @users = User.where(filter_users_query(search_params)).paginate(page:, per_page:).decorate
    else
      @users = User.all.order('created_at DESC').paginate(page:, per_page:).decorate
    end
    render json: { users: @users }, status: :ok
  end

  def create
    @user = User.new(name: params[:users][:name], email: params[:users][:email],
                     campaigns_list: params[:users][:campaigns_list].as_json)
    if @user.save!
      render json: { user: @user, message: 'User created successfully!' }, status: :ok
    else
      render json: { message: 'User not created.' }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:users).permit!
  end
end
