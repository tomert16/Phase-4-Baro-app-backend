class CrawlEventSerializer < ActiveModel::Serializer
  attributes :id, :message
  has_one :bar_crawl
  has_one :user_id
end
