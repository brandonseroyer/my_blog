class AddUpdatedAtToContents < ActiveRecord::Migration
  def change
    add_column :contents, :updated_at, :datetime

  end
end
