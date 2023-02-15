class BarCrawlReviewSerializer < ActiveModel::Serializer
  attributes :star_rating, :content, :username
  has_one :user
  has_one :bar_crawl_id

  def username 
    object.user.username
  end

end
