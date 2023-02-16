class BarCrawlsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
            barCrawls = BarCrawl.all
            render json: barCrawls
    end
end
