class CrawlEventsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
        crawlEvents = CrawlEvent.all
        render json: crawlEvents
    end

    def create 
        new_crawlEvent = CrawlEvent.create!(crawlEvent_params)
        render json: new_crawlEvent, status: :created
    end

    private 

    def crawlEvent_params
        params.permit(:event_name, :event_description, :user_id, :bar_crawl_id)
    end
end
