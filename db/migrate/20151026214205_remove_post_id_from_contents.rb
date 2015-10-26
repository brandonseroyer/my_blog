class RemovePostIdFromContents < ActiveRecord::Migration
  def change
    remove_column :contents, :post_id, :integer
  end
end
