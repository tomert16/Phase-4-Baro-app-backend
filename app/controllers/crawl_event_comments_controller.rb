class CrawlEventCommentsController < ApplicationController

    def index
        crawlEventComents = CrawlEventComment.all
        render json: crawlEventComents
    end
end
