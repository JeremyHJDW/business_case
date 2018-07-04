require 'rails_helper'

RSpec.describe "routes", type: :routing do

  it "test get index" do
    expect(get('/business_cases')).to route_to("business_cases#index")
  end

  it "test get show" do
    expect(get('/business_cases/1')).to route_to(:controller => "business_cases" , :action => "show", :id => "1")
  end

  it "test get edit" do
    expect(get('/business_cases/1/edit')).to route_to(:controller => "business_cases" , :action => "edit", :id => "1")
  end

  it "test get new" do
    expect(get('/business_cases/new')).to route_to(:controller => "business_cases" , :action => "new")
  end

  it "test post create" do
    expect(post('/business_cases')).to route_to(:controller => "business_cases" , :action => "create")
  end

  it "test patch update" do
    expect(patch('/business_cases/1')).to route_to(:controller => "business_cases" , :action => "update", :id => "1")
  end

  it "test put update" do
    expect(put('/business_cases/1')).to route_to(:controller => "business_cases" , :action => "update", :id => "1")
  end

  it "test delete destroy" do
    expect(delete('/business_cases/1')).to route_to(:controller => "business_cases" , :action => "destroy", :id => "1")
  end

  it "test root" do
    expect(get('/')).to route_to(:controller => "business_cases" , :action => "index")
  end




end
