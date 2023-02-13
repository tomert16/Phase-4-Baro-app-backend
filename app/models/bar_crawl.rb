class BarCrawl < ApplicationRecord
  belongs_to :user
  
  has_many :bar_crawl_reviews
  has_many :crawl_events

  validates_presence_of :bar_crawl_name, :bar_crawl_bars_id, :user_id
end
