class Content < ActiveRecord::Base
  belongs_to :post


  validates :entry, :presence => true


end
