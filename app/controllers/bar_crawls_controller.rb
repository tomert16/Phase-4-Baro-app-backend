class BarCrawlsController < ApplicationController
    skip_before_action :authorized, only: :index

    def index
            barCrawls = BarCrawl.all
            render json: barCrawls
    end

    def create
        barCrawl = BarCrawl.create(bar_crawl_params)
        render json: barCrawl
    end

    private

    def bar_crawl_params
        params.permit(:bar_crawl_name, :bar_crawl_bars_id, :user_id, :public_private)
    end
end
