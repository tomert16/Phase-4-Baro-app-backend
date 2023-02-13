class CreateBarCrawlReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :bar_crawl_reviews do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :bar_crawl, null: false, foreign_key: true
      t.float :star_rating
      t.text :content

      t.timestamps
    end
  end
end
