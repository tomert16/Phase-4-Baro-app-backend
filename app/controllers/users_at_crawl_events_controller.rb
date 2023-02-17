class UsersAtCrawlEventsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
        usersAtCrawlEvents = UsersAtCrawlEvent.all
        render json: usersAtCrawlEvents
    end
end
