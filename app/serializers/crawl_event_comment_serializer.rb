class CrawlEventCommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :crawl_event_id
  has_one :user
  # has_one :crawl_event
end
