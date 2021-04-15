class RenameMenmberIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :menmber_id, :member_id
  end
end
