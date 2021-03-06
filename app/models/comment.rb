class Comment < ActiveRecord::Base
  default_scope { order('created_at ASC')}

  belongs_to :post
  belongs_to :user

  validates :text, :presence => true
end
