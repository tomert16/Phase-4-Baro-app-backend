class ReviewsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
            reviews = Review.all
            render json: reviews
    end
end
