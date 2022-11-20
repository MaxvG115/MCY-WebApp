class SubjectStatusesController < ApplicationController
  before_action :set_subject_status, only: %i[ show edit update destroy ]

  # GET /subject_statuses or /subject_statuses.json
  def index
    @subject_statuses = SubjectStatus.all
  end

  # GET /subject_statuses/1 or /subject_statuses/1.json
  def show
  end

  # GET /subject_statuses/new
  def new
    @subject_status = SubjectStatus.new
  end

  # GET /subject_statuses/1/edit
  def edit
  end

  # POST /subject_statuses or /subject_statuses.json
  def create
    @subject_status = SubjectStatus.new(subject_status_params)

    respond_to do |format|
      if @subject_status.save
        format.html { redirect_to subject_status_url(@subject_status), notice: "Subject status was successfully created." }
        format.json { render :show, status: :created, location: @subject_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subject_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_statuses/1 or /subject_statuses/1.json
  def update
    respond_to do |format|
      if @subject_status.update(subject_status_params)
        format.html { redirect_to subject_status_url(@subject_status), notice: "Subject status was successfully updated." }
        format.json { render :show, status: :ok, location: @subject_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subject_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_statuses/1 or /subject_statuses/1.json
  def destroy
    @subject_status.destroy

    respond_to do |format|
      format.html { redirect_to subject_statuses_url, notice: "Subject status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_status
      @subject_status = SubjectStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subject_status_params
      params.require(:subject_status).permit(:status_name)
    end
end
