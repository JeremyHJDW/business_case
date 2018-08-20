class BusinessCasesController < ApplicationController
  before_action :set_business_case, only: [:show, :edit, :update, :destroy]

  # GET /business_cases
  def index
    @business_cases = BusinessCase.all
    # @business_cases = User.first.business_cases
  end

  # GET /business_cases/1
  def show
  end

  # GET /business_cases/new
  def new
    @business_case = BusinessCase.new
  end

  # GET /business_cases/1/edit
  def edit
  end

  # POST /business_cases
  def create
    @business_case  = BusinessCase.new(business_case_params)
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
      @business_case = BusinessCase.find(params[:id])
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
