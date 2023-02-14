class PendingInvitesController < ApplicationController

    def index
        pendingInvites = PendingInvite.all
        render json: pendingInvites
    end
end
