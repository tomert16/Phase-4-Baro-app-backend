class CrawlEvent < ApplicationRecord
  belongs_to :bar_crawl
  
  has_many :users_at_crawl_event
  has_many :pending_invites
  has_many :crawl_event_comments

  has_many :users, through: :users_at_crawl_event
  has_many :users, through: :pending_invites
  has_many :users, through: :crawl_event_comments

  validates_presence_of :user_id, :bar_crawl_id, :

end
