class CreateUsersAtCrawlEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :users_at_crawl_events do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :crawl_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
