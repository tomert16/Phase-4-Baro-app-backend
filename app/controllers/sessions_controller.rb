class SessionsController < ApplicationController
  skip_before_action :authorized, only: :create

  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      #think below should be changed without the p ;)
      p session[:user_id]
      render json: user, status: :ok
    else 
      render json: {errors: ["Invalid username or password"]}, status: :unauthorized
    end
  end

  def destroy
      session.delete(:user_id)
      head :no_content
  end
end
