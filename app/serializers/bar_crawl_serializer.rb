class BarCrawlSerializer < ActiveModel::Serializer
  attributes :id, :bar_crawl_bars_id, :bar_crawl_name
  has_one :user
end
