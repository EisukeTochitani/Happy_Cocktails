class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
     
      t.integer :menmber_id, null: false
      t.string :post_image_id, null: false

      t.timestamps
    end
  end
end
