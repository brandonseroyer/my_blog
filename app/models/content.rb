class Content < ActiveRecord::Base
    default_scope { order('created_at ASC')}
    
  belongs_to :post
  has_many :comments


  validates :entry, :presence => true


end
