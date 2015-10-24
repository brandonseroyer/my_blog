class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :text, :string
      t.column :content_id, :integer
      t.column :author, :string

      t.timestamps
    end
  end
end
