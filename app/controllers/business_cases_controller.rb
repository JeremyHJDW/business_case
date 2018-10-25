# frozen_string_literal: true

class BusinessCasesController < ApplicationController
  before_action :authenticate_user!, only: %i[index new show create edit update destroy]
  before_action :set_business_case, only: %i[show edit update destroy]

  # GET /business_cases
  def index
    @business_cases = BusinessCase.all
  end

  # GET /business_cases/1
  def show; end

  # GET /business_cases/new
  def new
    @business_case = BusinessCase.new
  end

  # GET /business_cases/1/edit
  def edit
  end

  # POST /business_cases
  def create
    @business_case = BusinessCase.new(business_case_params)
    @business_case.update(user: current_user)
    respond_to do |format|
      if @business_case.save
        format.html { redirect_to @business_case, notice: 'Business case was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /business_cases/1
  # PATCH/PUT /business_cases/1.json
  def update
    respond_to do |format|
      if @business_case.update(business_case_params)
        format.html { redirect_to @business_case, notice: 'Business case was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /business_cases/1
  # DELETE /business_cases/1.json
  def destroy
    @business_case.destroy
    respond_to do |format|
      format.html { redirect_to business_cases_url, notice: 'Business case was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_business_case
    redirect_to business_cases_url, notice: 'Business case was not found.' unless current_user
    @business_case = current_user.business_cases.find(params[:id]) if current_user
  end

# Never trust parameters from the scary internet, only allow the white list through.
def business_case_params
  params.require(:business_case).permit(
    :client_location,
    :client_industry,
    :client_size,
    :user_expertise,
    :client_problem,
    :user_methodology,
    :client_results,
    :client_comments,
    :user_link,
    :title,
    :client_position
  )
end
end
