class CrawlEventsController < ApplicationController

    def index
        crawlEvents = CrawlEvent.all
        render json: crawlEvents
    end
end
