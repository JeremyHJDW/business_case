require 'rails_helper'

describe "the signin process", type: :feature do

  let(:user) { create(:valid_user) }
  let(:business_cases) { create_list(:multiple_business_cases, 9, user: user) }

  it "signs me in" do
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
    end
    click_button 'Se connecter'
    expect(page).to have_content 'Signed in successfully.'
  end

  context 'signed in' do
    before do
      business_cases
      visit '/users/sign_in'
      within("#new_user") do
        fill_in 'user_email', with: user.email
        fill_in 'user_password', with: user.password
      end
      click_button 'Se connecter'
    end
    it "signs me in" do
      #redirect
      count = find_all('.business_case_details').count
      expect(count).to eq(9)
    end
  end
end
