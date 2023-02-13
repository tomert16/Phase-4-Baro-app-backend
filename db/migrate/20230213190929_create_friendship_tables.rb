class CreateFriendshipTables < ActiveRecord::Migration[7.0]
  def change
    create_table :friendship_tables do |t|
      t.integer :user_1_id
      t.integer :user_2_id
      t.integer :status

      t.timestamps
    end
  end
end
