require 'rails_helper'

feature 'Sign out' do
  background do
    user = create(:user)
    login_with(user)
    visit root_path
    click_link I18n.t(:'devise.sessions.destroy.sign_out')
  end

  scenario 'successfully sign out' do
    expect(page).to have_content I18n.t(:'devise.failure.unauthenticated')
    expect(current_path).to eq(new_user_session_path)
  end
end
