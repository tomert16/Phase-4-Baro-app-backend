class CrawlEventCommentsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
        crawlEventComents = CrawlEventComment.all
        render json: crawlEventComents
    end
end
