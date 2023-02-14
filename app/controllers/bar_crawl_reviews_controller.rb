class BarCrawlReviewsController < ApplicationController
    
    def index
        barCrawlReviews = BarCrawlReview.all
        render json: barCrawlReviews
    end
end
