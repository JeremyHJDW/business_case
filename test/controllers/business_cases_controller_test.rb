require 'test_helper'

class BusinessCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_case = business_cases(:one)
  end

  test "should get index" do
    get business_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_business_case_url
    assert_response :success
  end

  test "should create business_case" do
    assert_difference('BusinessCase.count') do
      post business_cases_url, params: { business_case: { client_comments: @business_case.client_comments, client_comments_validated: @business_case.client_comments_validated, client_industry: @business_case.client_industry, client_location: @business_case.client_location, client_position: @business_case.client_position, client_problem: @business_case.client_problem, client_results: @business_case.client_results, client_size: @business_case.client_size, title: @business_case.title, user_expertise: @business_case.user_expertise, user_link: @business_case.user_link, user_methodology: @business_case.user_methodology } }
    end

    assert_redirected_to business_case_url(BusinessCase.last)
  end

  test "should show business_case" do
    get business_case_url(@business_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_case_url(@business_case)
    assert_response :success
  end

  test "should update business_case" do
    patch business_case_url(@business_case), params: { business_case: { client_comments: @business_case.client_comments, client_comments_validated: @business_case.client_comments_validated, client_industry: @business_case.client_industry, client_location: @business_case.client_location, client_position: @business_case.client_position, client_problem: @business_case.client_problem, client_results: @business_case.client_results, client_size: @business_case.client_size, title: @business_case.title, user_expertise: @business_case.user_expertise, user_link: @business_case.user_link, user_methodology: @business_case.user_methodology } }
    assert_redirected_to business_case_url(@business_case)
  end

  test "should destroy business_case" do
    assert_difference('BusinessCase.count', -1) do
      delete business_case_url(@business_case)
    end

    assert_redirected_to business_cases_url
  end
end
