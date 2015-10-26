class Content < ActiveRecord::Base
  default_scope { order('created_at ASC')}

  belongs_to :post
  belongs_to :user


  validates :entry, :presence => true


end
