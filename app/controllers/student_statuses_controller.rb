class StudentStatusesController < ApplicationController
  before_action :set_student_status, only: %i[ show edit update destroy ]

  # GET /student_statuses or /student_statuses.json
  def index
    @student_statuses = StudentStatus.all
  end

  # GET /student_statuses/1 or /student_statuses/1.json
  def show
  end

  # GET /student_statuses/new
  def new
    @student_status = StudentStatus.new
  end

  # GET /student_statuses/1/edit
  def edit
  end

  # POST /student_statuses or /student_statuses.json
  def create
    @student_status = StudentStatus.new(student_status_params)

    respond_to do |format|
      if @student_status.save
        format.html { redirect_to student_status_url(@student_status), notice: "Student status was successfully created." }
        format.json { render :show, status: :created, location: @student_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_statuses/1 or /student_statuses/1.json
  def update
    respond_to do |format|
      if @student_status.update(student_status_params)
        format.html { redirect_to student_status_url(@student_status), notice: "Student status was successfully updated." }
        format.json { render :show, status: :ok, location: @student_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_statuses/1 or /student_statuses/1.json
  def destroy
    @student_status.destroy

    respond_to do |format|
      format.html { redirect_to student_statuses_url, notice: "Student status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_status
      @student_status = StudentStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_status_params
      params.require(:student_status).permit(:status_name)
    end
end
