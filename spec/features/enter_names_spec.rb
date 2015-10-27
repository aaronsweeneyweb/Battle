require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in(:player_one_name, with: 'Sam')
    fill_in(:player_two_name, with: 'Aaron')
    click_button('Submit')
    expect(page).to have_content 'Sam vs Aaron'
  end
end
