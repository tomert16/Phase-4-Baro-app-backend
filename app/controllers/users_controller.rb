class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create 
        new_user = User.create!(user_params)
        session[:user_id] = new_user.id
        render json: new_user, status: :created
    end

    def show 
        # byebug
        user = User.find_by(id: session[:user_id])
        render json: user, status: :ok
    end

    private

    def user_params
        params.permit(:real_name, :username, :email, :password, :password_confirmation)
    end


end
