class BarCrawlSerializer < ActiveModel::Serializer
  attributes :id, :bar_crawl_bars_id, :bar_crawl_name, :username
  # has_one :user
  
  has_many :bar_crawl_reviews

  def username 
    object.user.username
  end

  
end
