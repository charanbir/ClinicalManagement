class UserStudiesController < ApplicationController
  before_action :set_user_study, only: [:show, :edit, :update, :destroy]

  # GET /user_studies
  # GET /user_studies.json
  def index
    @user_studies = UserStudy.all
    
    respond_to do |format|
    format.html
    format.csv { send_data @user_studies.to_csv }
  end
  end

  # GET /user_studies/1
  # GET /user_studies/1.json
  def show
  end

  # GET /user_studies/new
  def new
    @user_study = UserStudy.new
  end

  # GET /user_studies/1/edit
  def edit
  end

  # POST /user_studies
  # POST /user_studies.json
  def create
    @user_study = UserStudy.new(user_study_params)

    respond_to do |format|
      if @user_study.save
        format.html { redirect_to @user_study, notice: 'User study was successfully created.' }
        format.json { render :show, status: :created, location: @user_study }
      else
        format.html { render :new }
        format.json { render json: @user_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_studies/1
  # PATCH/PUT /user_studies/1.json
  def update
    respond_to do |format|
      if @user_study.update(user_study_params)
        format.html { redirect_to @user_study, notice: 'User study was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_study }
      else
        format.html { render :edit }
        format.json { render json: @user_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_studies/1
  # DELETE /user_studies/1.json
  def destroy
    @user_study.destroy
    respond_to do |format|
      format.html { redirect_to user_studies_url, notice: 'User study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_study
      @user_study = UserStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_study_params
      params.require(:user_study).permit(:User_id, :Study_id, :dob, :gender, :address)
    end
end
