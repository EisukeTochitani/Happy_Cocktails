class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      
      t.integer :follower_id, null: false #フォローするユーザーID
      t.integer :followed_id, null: false #フォローされるユーザーID

      t.timestamps
    end
  end
end
