require 'rails_helper'

describe Commment do

  it {should validate_presence_of :text}
  it {should belong_to :post}

end
