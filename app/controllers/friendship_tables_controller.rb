class FriendshipTablesController < ApplicationController
    skip_before_action :authorized, only: :create
    wrap_parameters format: []

    def index
        friendshipTables = FriendshipTable.all
        render json: friendshipTables
    end

    def create 
        friendship = current_user.friendship_tables_as_user_1.create!(friendship_params)
        render json: friendship, status: :created
    end

    # def update
    #     friendship = current_user.friendship_tables_as_user_1.current_friend.update!(friendship_params)
    #     render json: friendship, status: :accepted
    # end

    private 

    def friendship_params
        params.permit(:user_2_id, :friend_status)
    end

end
