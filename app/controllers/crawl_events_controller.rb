class CrawlEventsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
        crawlEvents = CrawlEvent.all
        render json: crawlEvents
    end
end
