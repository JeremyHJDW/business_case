require 'rails_helper'

RSpec.describe BusinessCasesController, type: :controller do
  before(:each) do
    @b = BusinessCase.new
    @b.title = "Comment tester"
    @b.client_location = BusinessCase.client_locations_list.sample
    @b.client_industry = BusinessCase.client_industries_list.sample
    @b.client_size = BusinessCase.client_sizes_list.sample
    @b.user_expertise = BusinessCase.user_expertises_list.sample
    @b.client_position = BusinessCase.client_positions_list.sample
    @b.user_methodology = "L'instinct"
    @b.client_problem = "Pas assez de rentabilité"
    @b.client_results = "Il a fait x2 à la fin !!!"
    @b.save
  end
  describe "GET #index" do
    it "returns a 200 custom status code" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
  describe "GET #show" do
    it "returns a 200 custom status code" do
      get :show, params: { id: @b.id }
      byebug
      expect(response).to have_http_status(200)
    end
  end
  describe "GET #edit" do
    it "returns a 200 custom status code" do
      get :edit, params: { id: @b.id }
      expect(response).to have_http_status(200)
    end
  end
end
