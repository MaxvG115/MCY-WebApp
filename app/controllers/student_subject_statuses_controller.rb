class StudentSubjectStatusesController < ApplicationController
  before_action :set_student_subject_status, only: %i[ show edit update destroy ]

  # GET /student_subject_statuses or /student_subject_statuses.json
  def index
    @student_subject_statuses = StudentSubjectStatus.all
  end

  # GET /student_subject_statuses/1 or /student_subject_statuses/1.json
  def show
  end

  # GET /student_subject_statuses/new
  def new
    @student_subject_status = StudentSubjectStatus.new
  end

  # GET /student_subject_statuses/1/edit
  def edit
  end

  # POST /student_subject_statuses or /student_subject_statuses.json
  def create
    @student_subject_status = StudentSubjectStatus.new(student_subject_status_params)

    respond_to do |format|
      if @student_subject_status.save
        format.html { redirect_to student_subject_status_url(@student_subject_status), notice: "Student subject status was successfully created." }
        format.json { render :show, status: :created, location: @student_subject_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_subject_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_subject_statuses/1 or /student_subject_statuses/1.json
  def update
    respond_to do |format|
      if @student_subject_status.update(student_subject_status_params)
        format.html { redirect_to student_subject_status_url(@student_subject_status), notice: "Student subject status was successfully updated." }
        format.json { render :show, status: :ok, location: @student_subject_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_subject_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_subject_statuses/1 or /student_subject_statuses/1.json
  def destroy
    @student_subject_status.destroy

    respond_to do |format|
      format.html { redirect_to student_subject_statuses_url, notice: "Student subject status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_subject_status
      @student_subject_status = StudentSubjectStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_subject_status_params
      params.require(:student_subject_status).permit(:student_subject_relation_id, :subject_statuses_id)
    end
end
