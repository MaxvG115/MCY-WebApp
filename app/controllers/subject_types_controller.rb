class SubjectTypesController < ApplicationController
  before_action :set_subject_type, only: %i[ show edit update destroy ]

  # GET /subject_types or /subject_types.json
  def index
    @subject_types = SubjectType.all
  end

  # GET /subject_types/1 or /subject_types/1.json
  def show
  end

  # GET /subject_types/new
  def new
    @subject_type = SubjectType.new
  end

  # GET /subject_types/1/edit
  def edit
  end

  # POST /subject_types or /subject_types.json
  def create
    @subject_type = SubjectType.new(subject_type_params)

    respond_to do |format|
      if @subject_type.save
        format.html { redirect_to subject_type_url(@subject_type), notice: "Subject type was successfully created." }
        format.json { render :show, status: :created, location: @subject_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subject_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_types/1 or /subject_types/1.json
  def update
    respond_to do |format|
      if @subject_type.update(subject_type_params)
        format.html { redirect_to subject_type_url(@subject_type), notice: "Subject type was successfully updated." }
        format.json { render :show, status: :ok, location: @subject_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subject_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_types/1 or /subject_types/1.json
  def destroy
    @subject_type.destroy

    respond_to do |format|
      format.html { redirect_to subject_types_url, notice: "Subject type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_type
      @subject_type = SubjectType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subject_type_params
      params.require(:subject_type).permit(:name_subject_type)
    end
end
