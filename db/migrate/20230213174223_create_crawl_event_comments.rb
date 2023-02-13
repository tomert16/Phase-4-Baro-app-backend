class CreateCrawlEventComments < ActiveRecord::Migration[7.0]
  def change
    create_table :crawl_event_comments do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :crawl_event, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
