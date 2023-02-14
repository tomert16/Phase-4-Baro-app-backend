class BarCrawlReviewSerializer < ActiveModel::Serializer
  attributes :id, :star_rating, :content
  has_one :user
  has_one :bar_crawl_id
end
