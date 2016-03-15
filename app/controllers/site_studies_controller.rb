class SiteStudiesController < ApplicationController
  before_action :set_site_study, only: [:show, :edit, :update, :destroy]

  # GET /site_studies
  # GET /site_studies.json
  def index
    @site_studies = SiteStudy.all
  end

  # GET /site_studies/1
  # GET /site_studies/1.json
  def show
  end

  # GET /site_studies/new
  def new
    @site_study = SiteStudy.new
  end

  # GET /site_studies/1/edit
  def edit
  end

  # POST /site_studies
  # POST /site_studies.json
  def create
    @site_study = SiteStudy.new(site_study_params)

    respond_to do |format|
      if @site_study.save
        format.html { redirect_to @site_study, notice: 'Site study was successfully created.' }
        format.json { render :show, status: :created, location: @site_study }
      else
        format.html { render :new }
        format.json { render json: @site_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_studies/1
  # PATCH/PUT /site_studies/1.json
  def update
    respond_to do |format|
      if @site_study.update(site_study_params)
        format.html { redirect_to @site_study, notice: 'Site study was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_study }
      else
        format.html { render :edit }
        format.json { render json: @site_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_studies/1
  # DELETE /site_studies/1.json
  def destroy
    @site_study.destroy
    respond_to do |format|
      format.html { redirect_to site_studies_url, notice: 'Site study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_study
      @site_study = SiteStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_study_params
      params.require(:site_study).permit(:Site_id, :Study_id)
    end
end
