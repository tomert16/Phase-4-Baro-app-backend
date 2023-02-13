class CrawlEventCommentSerializer < ActiveModel::Serializer
  attributes :id, :comment
  has_one :user
  has_one :crawl_event
end
