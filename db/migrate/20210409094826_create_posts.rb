class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.integer :menmber_id, null: false
      t.integer :genre_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.string :post_image_id

      t.timestamps
    end
  end
end
