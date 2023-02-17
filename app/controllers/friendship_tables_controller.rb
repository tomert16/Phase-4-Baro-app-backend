class FriendshipTablesController < ApplicationController
    wrap_parameters format: []
    skip_before_action :authorized, only: [:index, :show]

    def index
        friendshipTables = FriendshipTable.all
        render json: friendshipTables
    end

    def show
        friendship = FriendshipTable.find(params[:id])
        render json: friendship
    end

    def create 
        friendship = current_user.friendship_tables_as_user_1.create!(friendship_params)
        render json: friendship, status: :created
    end

    def update 
        friend = FriendshipTable.find_by(id: params[:id])
            friend.update(friendship_params)
            render json: friend
    end

    private 

    def friendship_params
        params.permit(:user_2_id, :friend_status)
    end

end
