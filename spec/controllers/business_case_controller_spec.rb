# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BusinessCasesController, type: :controller do
  let(:business_case) do
    create(:valid_business_case)
  end

  let(:business_cases) do
    create_list(:multiple_business_cases, 3)
  end

  describe 'GET #index' do
    render_views
    it 'returns a 200 custom status code' do
      business_cases
      get :index
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET #show' do
    it 'returns a 200 custom status code' do
      get :show, params: { id: business_case.id }
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET #edit' do
    it 'returns a 200 custom status code' do
      get :edit, params: { id: business_case.id }
      expect(response).to have_http_status(200)
    end
  end
end
