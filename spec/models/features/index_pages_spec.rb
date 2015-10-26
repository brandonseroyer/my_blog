require 'rails_helper'

describe 'show  index page content' do
  it 'displays the index page' do
    visit root_path
    expect(page).to have_content 'HELLO WORLD!'
  end
end
