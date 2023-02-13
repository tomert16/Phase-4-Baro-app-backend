class CreateBarCrawls < ActiveRecord::Migration[7.0]
  def change
    create_table :bar_crawls do |t|
      t.string :bar_crawl_name
      t.string :bar_crawl_bars_id
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :public_private

      t.timestamps
    end
  end
end
