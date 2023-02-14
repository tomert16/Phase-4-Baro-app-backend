class UsersAtCrawlEventsController < ApplicationController

    def index
        usersAtCrawlEvents = UsersAtCrawlEvent.all
        render json: usersAtCrawlEvents
    end
end
