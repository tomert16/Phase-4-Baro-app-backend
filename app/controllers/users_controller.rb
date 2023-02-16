class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

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
        if current_user
            user = User.find(params[:id])
            render json: user, status: :ok
        end
    end

    def me
        
        p 'ME'
        p session[:user_id]
        # byebug
        # user = User.find_by!(id: session[:user_id])
        render json: current_user, status: :ok
    end

        # def test_route
        #     p session[:user_id]
        #     render json: [], status: 200
        # end

    private

    def user_params
        params.permit(:real_name, :username, :email, :password, :password_confirmation)
    end


end
