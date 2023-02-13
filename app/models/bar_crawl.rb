class BarCrawl < ApplicationRecord
  belongs_to :user
  
  has_many :bar_crawl_reviews
  has_many :crawl_events
end
