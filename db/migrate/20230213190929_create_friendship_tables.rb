class CreateFriendshipTables < ActiveRecord::Migration[7.0]
  def change
    create_table :friendship_tables do |t|
      t.integer :user_1
      t.integer :user_2
      t.integer :status

      t.timestamps
    end
  end
end
