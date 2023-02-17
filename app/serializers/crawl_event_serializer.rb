class CrawlEventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :event_description, :user_id
  # belongs_to :users
  has_one :bar_crawl

  # def user_name
  #   object.users.username
  # end
  
  
  
end
