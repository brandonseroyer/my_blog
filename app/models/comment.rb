class Review < ActiveRecord::Base
  default_scope { order('created_at ASC')}

  belongs_to :content
  belongs_to :user

  validates :text, :presence => true
end
