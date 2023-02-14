class CrawlEventComment < ApplicationRecord
  belongs_to :user
  belongs_to :crawl_event

  validates_presence_of :crawl_event_id, :user_id

  validates :comment, length: {in: 1..500}
end
