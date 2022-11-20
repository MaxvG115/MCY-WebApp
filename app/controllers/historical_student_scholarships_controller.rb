class HistoricalStudentScholarshipsController < ApplicationController
  before_action :set_historical_student_scholarship, only: %i[ show edit update destroy ]

  # GET /historical_student_scholarships or /historical_student_scholarships.json
  def index
    @historical_student_scholarships = HistoricalStudentScholarship.all
  end

  # GET /historical_student_scholarships/1 or /historical_student_scholarships/1.json
  def show
  end

  # GET /historical_student_scholarships/new
  def new
    @historical_student_scholarship = HistoricalStudentScholarship.new
  end

  # GET /historical_student_scholarships/1/edit
  def edit
  end

  # POST /historical_student_scholarships or /historical_student_scholarships.json
  def create
    @historical_student_scholarship = HistoricalStudentScholarship.new(historical_student_scholarship_params)

    respond_to do |format|
      if @historical_student_scholarship.save
        format.html { redirect_to historical_student_scholarship_url(@historical_student_scholarship), notice: "Historical student scholarship was successfully created." }
        format.json { render :show, status: :created, location: @historical_student_scholarship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historical_student_scholarship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historical_student_scholarships/1 or /historical_student_scholarships/1.json
  def update
    respond_to do |format|
      if @historical_student_scholarship.update(historical_student_scholarship_params)
        format.html { redirect_to historical_student_scholarship_url(@historical_student_scholarship), notice: "Historical student scholarship was successfully updated." }
        format.json { render :show, status: :ok, location: @historical_student_scholarship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historical_student_scholarship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historical_student_scholarships/1 or /historical_student_scholarships/1.json
  def destroy
    @historical_student_scholarship.destroy

    respond_to do |format|
      format.html { redirect_to historical_student_scholarships_url, notice: "Historical student scholarship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historical_student_scholarship
      @historical_student_scholarship = HistoricalStudentScholarship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historical_student_scholarship_params
      params.require(:historical_student_scholarship).permit(:alumnos_id, :scholarships_id)
    end
end
