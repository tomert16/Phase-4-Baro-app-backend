class UsersAtCrawlEventSerializer < ActiveModel::Serializer
  attributes :id, :crawl_event_id
  has_one :user
  # has_one :crawl_event
end
