class BarsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
        bars = Bar.all
        render json: bars
    end
end
