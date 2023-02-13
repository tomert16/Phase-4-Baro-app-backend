class CrawlEvent < ApplicationRecord
  belongs_to :bar_crawl
  belongs_to :user
end
