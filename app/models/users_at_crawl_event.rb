class UsersAtCrawlEvent < ApplicationRecord
  belongs_to :user
  belongs_to :crawl_event

  validates_presence_of :user_id, :crawl_event_id
end
