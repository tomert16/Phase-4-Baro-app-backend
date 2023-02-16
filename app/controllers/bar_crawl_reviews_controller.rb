class BarCrawlReviewsController < ApplicationController
    skip_before_action :authorized, only: :index
    
    def index
        barCrawlReviews = BarCrawlReview.all
        render json: barCrawlReviews
    end
end
