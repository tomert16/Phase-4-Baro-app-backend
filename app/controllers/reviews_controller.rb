class ReviewsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
            reviews = Review.all
            render json: reviews
    end

    def create
        new_review = Review.create!(review_params)
        render json: new_review, status: :created
    end

    def update 
        # review = Review.find_by!(id: params[:id])
        review = @current_user.reviews.find_by!(id: params[:id])
        review.update(review_params)
        render json: review, status: :ok
    end


    private 

    def review_params
        params.permit(:star_rating, :content, :user_id, :bar_id)
    end
end
