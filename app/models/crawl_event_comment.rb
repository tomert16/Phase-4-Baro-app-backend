class CrawlEventComment < ApplicationRecord
  belongs_to :user
  belongs_to :crawl_event
end
