class UsersController < ApplicationController
  def new
    user = User.new(user_params)
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.username
    if user.save
	  render json: {status: 'Success!', message: 'Welcome! You have successfully created an account!', data:user},status: :ok
	else
		render json: {status: 'Error!', message: 'Something went wrong. Please see error.', data:user.errors},status: :unprocessable_entity
	end
  end

  private
  def user_params
	  params.permit(:username, :password, :password_confirmation, :garden_type, :experience_level)
  end
end
