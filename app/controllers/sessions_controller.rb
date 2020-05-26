class SessionsController < ApplicationController
  def create
   user = User.find_by username: params[:username]
   if user && user.authenticate(params[:password])
   	session[:user_id] = user.username
   	render json: {status: 'Success!', message: 'Welcome! You have successfully Logged In!', data:session},status: :ok
	else
		render json: {status: 'Error!', message: 'Something went wrong. Please see error.', data:session.errors},status: :unprocessable_entity
	end
  end

  def destroy
  	session[:user_id] = nil
   	render json: {status: 'Success!', message: 'Welcome! You have successfully Logged Out!', data:session},status: :ok
  end
end
