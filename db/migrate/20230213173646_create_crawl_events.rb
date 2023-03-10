class CreateCrawlEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :crawl_events do |t|
      t.belongs_to :bar_crawl, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :event_name
      t.text :event_description

      t.timestamps
    end
  end
end
