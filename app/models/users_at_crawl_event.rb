class UsersAtCrawlEvent < ApplicationRecord
  belongs_to :user
  belongs_to :crawl_event
end
