require 'rails_helper'
require 'factory_girl_rails'

feature 'Account Management' do  
  scenario 'A user creates an account' do
    visit new_user_path

    fill_in "Email", with: 'bugs@rubyplus.com'
    fill_in "Password", with: '12345'
    fill_in "Name", with: 'test'

    click_button 'Signup'

    expect(page).to have_content('')
  end

end