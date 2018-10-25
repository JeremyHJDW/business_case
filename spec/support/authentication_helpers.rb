module AuthenticationHelpers
  def sign_in(user)
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
    end
    click_button 'Se connecter'
  end
end
