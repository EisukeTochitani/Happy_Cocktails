class RenamePostImaageIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :Posts, :post_image_id, :image_id
  end
end
