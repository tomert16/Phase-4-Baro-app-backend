class BarCrawlsController < ApplicationController

    def index
        barCrawls = BarCrawl.all
        render json: barCrawls
    end

    def show
        barCrawl = BarCrawl.find(params[:id])
        render json: barCrawl
    end
end
