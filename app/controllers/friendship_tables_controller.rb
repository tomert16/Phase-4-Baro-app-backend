class FriendshipTablesController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
        friendshipTables = FriendshipTable.all
        render json: friendshipTables
    end

end
