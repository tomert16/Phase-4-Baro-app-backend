class CrawlEventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :event_description 
  has_one :bar_crawl
  has_one :user_id
end
