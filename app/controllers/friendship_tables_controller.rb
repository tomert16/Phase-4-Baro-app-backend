class FriendshipTablesController < ApplicationController

    def index
        friendshipTables = FriendshipTable.all
        render json: friendshipTables
    end

end
