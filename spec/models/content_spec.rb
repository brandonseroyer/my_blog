require 'rails_helper'

describe Content do

  it {should validate_presence_of :entry}
  it {should belong_to :post}
  
end
