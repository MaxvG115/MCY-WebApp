class ScholarshipsController < ApplicationController
  before_action :set_scholarship, only: %i[ show edit update destroy ]

  # GET /scholarships or /scholarships.json
  def index
    @scholarships = Scholarship.all
  end

  # GET /scholarships/1 or /scholarships/1.json
  def show
  end

  # GET /scholarships/new
  def new
    @scholarship = Scholarship.new
  end

  # GET /scholarships/1/edit
  def edit
  end

  # POST /scholarships or /scholarships.json
  def create
    @scholarship = Scholarship.new(scholarship_params)

    respond_to do |format|
      if @scholarship.save
        format.html { redirect_to scholarship_url(@scholarship), notice: "Scholarship was successfully created." }
        format.json { render :show, status: :created, location: @scholarship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scholarship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scholarships/1 or /scholarships/1.json
  def update
    respond_to do |format|
      if @scholarship.update(scholarship_params)
        format.html { redirect_to scholarship_url(@scholarship), notice: "Scholarship was successfully updated." }
        format.json { render :show, status: :ok, location: @scholarship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scholarship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scholarships/1 or /scholarships/1.json
  def destroy
    @scholarship.destroy

    respond_to do |format|
      format.html { redirect_to scholarships_url, notice: "Scholarship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def import
    Scholarship.import(params[:file])
    redirect_to scholarships_path, notice: "Becas agregadas con éxito"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholarship
      @scholarship = Scholarship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scholarship_params
      params.require(:scholarship).permit(:beca_base, :nombre_beca)
    end
end
