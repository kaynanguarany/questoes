require 'rails_helper'

RSpec.describe "Login" do

  feature 'Visitor signs up' do
    scenario 'with valid email and password' do
      sign_up_with 'valid@example.com', 'password'

      expect(page).to have_content('Signed up!')
    end

    scenario 'with blank password' do
      sign_up_with 'valid@example.com', ''

      expect(page).to have_content('Formulário está inválido')
    end

    def sign_up_with(email, password)
      visit sign_up_path
      fill_in 'user_email', with: email
      fill_in 'user_password', with: password
      fill_in 'user_password_confirmation', with: password
      click_button 'Sign up'
    end
  end

  feature  "Visitor log in" do
    before { @user = create(:auth_user)}
    scenario "with a valid email and password" do
      log_in_with @user.email, @user.password

      expect(page).to have_content("Logged in!")
    end

    def log_in_with(email, password)
      visit log_in_path
      fill_in 'email', with: email
      fill_in 'password', with: password
      click_button "Login"
    end
  end

end
