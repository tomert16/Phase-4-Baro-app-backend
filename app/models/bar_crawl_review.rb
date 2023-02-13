class BarCrawlReview < ApplicationRecord
  belongs_to :user
  belongs_to :bar_crawl

  validates_presence_of :user_id, :bar_crawl_id, :star_rating
end
