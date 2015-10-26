class Post < ActiveRecord::Base
    default_scope { order('created_at DESC')}

  belongs_to :user
  has_many :contents, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, :presence => true
end
