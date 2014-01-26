require 'spec_helper'

describe 'creating a new post' do

  # before do
  #   login
  # end

  it 'is created from a form, providing Title and Content' do

    visit '/links/submit'
    fill_in 'Title', with: 'Hacker News'
    fill_in 'Url', with: 'http://makeracademy.com'
    fill_in 'Text', with: 'Links description'
    # fill_in 'Tags', with: 'yolo, swag'
    click_button 'Create Link'

    expect(page).to have_content 'Hacker News'
    expect(page).to have_content 'http://makeracademy.com'
    # expect(page).to have_content '#yolo', '#swag'
    expect(current_path).to eq '/links'
    
  end
end