class BarCrawlsController < ApplicationController

    def index
        barCrawls = BarCrawl.all
        render json: barCrawls
    end
end
