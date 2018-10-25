require 'rails_helper'

describe "the signin process", type: :feature do

  let(:user) { create(:valid_user) }

  it "signs me in" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
    end
    click_button 'Se connecter'
    expect(page).to have_content 'Signed in successfully.'
  end
end
