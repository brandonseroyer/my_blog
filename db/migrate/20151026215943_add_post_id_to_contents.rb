class AddPostIdToContents < ActiveRecord::Migration
  def change
    add_column :contents, :post_id, :integer
  end
end
