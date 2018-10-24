require 'rails_helper'

RSpec.describe BusinessCasesController, type: :controller do
  let(:business_case) do
    create(:valid_business_case)
  end

  describe "GET #index" do
    it "returns a 200 custom status code" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
  describe "GET #show" do
    it "returns a 200 custom status code" do
      get :show, params: { id: business_case.id }
      expect(response).to have_http_status(200)
    end
  end
  describe "GET #edit" do
    it "returns a 200 custom status code" do
      get :edit, params: { id: business_case.id }
      expect(response).to have_http_status(200)
    end
  end
end
