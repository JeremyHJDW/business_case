# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BusinessCasesController, type: :controller do
  let(:business_case) do
    create(:valid_business_case, user: user)
  end

  let(:business_case_attributes) do
    business_case = build(:valid_business_case, user: nil)
    business_case.attributes
  end

  let(:user) do
    create(:valid_user)
  end

  let(:business_cases) do
    create_list(:multiple_business_cases, 3)
  end

  context 'when an user is logged in' do
    render_views
    before do
      sign_in user
    end
    describe 'GET #index' do
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

    describe 'POST #create' do
      it 'returns a 302 custom status code and creates the business case' do
        params = {
          :business_case => ''
        }
        params[:business_case] = business_case_attributes
        post :create, params: params
        expect(response).to have_http_status(302)
        user_business_cases = user.business_cases
        expect(user_business_cases.count).to eq(1)
      end
    end

    describe 'PATCH #update' do
      it 'returns a 302 custom status code and updates the business case' do
        modified_problem = 'New problem'
        params = {
          :business_case => ''
        }
        params[:business_case] = business_case_attributes
        params = params.with_indifferent_access
        params[:id] = business_case.id
        params[:business_case][:client_problem] = modified_problem
        put :update, params: params
        expect(response).to have_http_status(302)
        user_business_case = user.business_cases.first
        expect(user_business_case.client_problem).to eq(modified_problem)
      end
    end
    describe 'DELETE #destroy' do
      it 'returns a 302 custom status code and destroys the business case' do
        params = {
          :id => business_case.id
        }
        delete :destroy, params: params
        expect(response).to have_http_status(302)
        user_business_cases = user.business_cases
        expect(user_business_cases.count).to eq(0)
      end
    end
  end

  context 'when an user is NOT logged in' do
    render_views
    describe 'GET #index' do
      it 'returns a 200 custom status code' do
        business_cases
        get :index
        expect(response).to have_http_status(302)
      end
    end

    describe 'GET #show' do
      it 'returns a 200 custom status code' do
        get :show, params: { id: business_case.id }
        expect(response).to have_http_status(302)
      end
    end

    describe 'GET #edit' do
      it 'returns a 200 custom status code' do
        get :edit, params: { id: business_case.id }
        expect(response).to have_http_status(302)
      end
    end

    describe 'POST #create' do
      it 'returns a 302 custom status code and creates the business case' do
        params = {
          :business_case => ''
        }
        params[:business_case] = business_case_attributes
        post :create, params: params
        expect(response).to have_http_status(302)
        user_business_cases = user.business_cases
        expect(user_business_cases.count).to eq(0)
      end
    end
    describe 'PATCH #update' do
      it 'returns a 302 custom status code and does not update the business case' do
        initial_problem = business_case.client_problem
        modified_problem = 'New problem'
        params = {
          :business_case => ''
        }
        params[:business_case] = business_case_attributes
        params = params.with_indifferent_access
        params[:id] = business_case.id
        params[:business_case][:client_problem] = modified_problem
        put :update, params: params
        expect(response).to have_http_status(302)
        user_business_case = user.business_cases.first
        expect(user_business_case.client_problem).to eq(initial_problem)
      end
    end
    describe 'DELETE #destroy' do
      it 'returns a 302 custom status code and does not delete the business case' do
        params = {
          :id => business_case.id
        }
        delete :destroy, params: params
        expect(response).to have_http_status(302)
        user_business_cases = user.business_cases
        expect(user_business_cases.count).to eq(1)
      end
    end
  end
end
