class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if params[:email].nil? || params[:password].nil? || params[:password_confirmation].nil?
      render json: { error: 'Cannot leave field blank' }, status: :bad_request
    elsif User.find_by(email: user.email)
      render json: { error: 'Email already in use' }, status: bad_request
    elsif params[:password] != params[:password_confirmation]
      render json: { error: 'Passwords do not match' }, status: bad_request
    elsif user.save
      render json: UserSerializer.new(user), status: 201
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
