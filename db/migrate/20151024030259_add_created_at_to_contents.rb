class AddCreatedAtToContents < ActiveRecord::Migration
  def change
    add_column :contents, :created_at, :datetime
  end
end
