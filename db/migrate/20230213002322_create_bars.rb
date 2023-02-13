class CreateBars < ActiveRecord::Migration[7.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :image
      t.string :category
      t.string :price
      t.integer :closing_time
      t.string :location

      t.timestamps
    end
  end
end
