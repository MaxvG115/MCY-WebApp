class HistoricalStudentStatusesController < ApplicationController
  before_action :set_historical_student_status, only: %i[ show edit update destroy ]

  # GET /historical_student_statuses or /historical_student_statuses.json
  def index
    @historical_student_statuses = HistoricalStudentStatus.all
  end

  # GET /historical_student_statuses/1 or /historical_student_statuses/1.json
  def show
  end

  # GET /historical_student_statuses/new
  def new
    @historical_student_status = HistoricalStudentStatus.new
  end

  # GET /historical_student_statuses/1/edit
  def edit
  end

  # POST /historical_student_statuses or /historical_student_statuses.json
  def create
    @historical_student_status = HistoricalStudentStatus.new(historical_student_status_params)

    respond_to do |format|
      if @historical_student_status.save
        format.html { redirect_to historical_student_status_url(@historical_student_status), notice: "Historical student status was successfully created." }
        format.json { render :show, status: :created, location: @historical_student_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historical_student_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historical_student_statuses/1 or /historical_student_statuses/1.json
  def update
    respond_to do |format|
      if @historical_student_status.update(historical_student_status_params)
        format.html { redirect_to historical_student_status_url(@historical_student_status), notice: "Historical student status was successfully updated." }
        format.json { render :show, status: :ok, location: @historical_student_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historical_student_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historical_student_statuses/1 or /historical_student_statuses/1.json
  def destroy
    @historical_student_status.destroy

    respond_to do |format|
      format.html { redirect_to historical_student_statuses_url, notice: "Historical student status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historical_student_status
      @historical_student_status = HistoricalStudentStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historical_student_status_params
      params.require(:historical_student_status).permit(:studentstatus_id, :alumnos_id)
    end
end
