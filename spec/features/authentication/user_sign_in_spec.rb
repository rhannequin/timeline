require 'rails_helper'

feature 'Sign in' do
  let(:user) { create(:user) }
  background do
    visit root_path
  end

  scenario 'an user can see the sign in form' do
    expect(page).to have_content I18n.t(:'devise.sessions.new.title')

    within 'form#new_user' do
      expect(page).to have_field I18n.t(:'mongoid.attributes.user.email')
      expect(page).to have_field I18n.t(:'mongoid.attributes.user.password')
      expect(page).to have_unchecked_field I18n.t(:'mongoid.attributes.user.remember_me')
      expect(page).to have_button I18n.t(:'devise.sessions.new.sign_in')
    end
  end

  describe 'when an user provides valid credentials' do
    background do
      within 'form' do
        fill_in I18n.t(:'mongoid.attributes.user.email'), with: user.email
        find('#user_password').set 'password'
        click_button I18n.t(:'devise.sessions.new.sign_in')
      end
    end

    scenario 'he should be signed in' do
      expect(current_path).to eq(root_path)
      expect(page).to have_content I18n.t(:'devise.sessions.signed_in')
      expect(page).to have_link I18n.t(:'devise.sessions.destroy.sign_out')
    end
  end
end
