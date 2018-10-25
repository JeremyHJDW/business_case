require 'rails_helper'

describe "the signin process", type: :feature do

  let(:user) { create(:valid_user) }
  let(:business_cases) { create_list(:multiple_business_cases, 9, user: user) }

  context 'signed in' do
    before do
      business_cases
      sign_in user
    end
    it "finds all user's business cases" do
      count = find_all('.business_case_details').count
      expect(count).to eq(9)
    end
  end
end
