class AcademicToSubjectRelationsController < ApplicationController
  before_action :set_academic_to_subject_relation, only: %i[ show edit update destroy ]

  # GET /academic_to_subject_relations or /academic_to_subject_relations.json
  def index
    @academic_to_subject_relations = AcademicToSubjectRelation.all
  end

  # GET /academic_to_subject_relations/1 or /academic_to_subject_relations/1.json
  def show
  end

  # GET /academic_to_subject_relations/new
  def new
    @academic_to_subject_relation = AcademicToSubjectRelation.new
  end

  # GET /academic_to_subject_relations/1/edit
  def edit
  end

  # POST /academic_to_subject_relations or /academic_to_subject_relations.json
  def create
    @academic_to_subject_relation = AcademicToSubjectRelation.new(academic_to_subject_relation_params)

    respond_to do |format|
      if @academic_to_subject_relation.save
        format.html { redirect_to academic_to_subject_relation_url(@academic_to_subject_relation), notice: "Academic to subject relation was successfully created." }
        format.json { render :show, status: :created, location: @academic_to_subject_relation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @academic_to_subject_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /academic_to_subject_relations/1 or /academic_to_subject_relations/1.json
  def update
    respond_to do |format|
      if @academic_to_subject_relation.update(academic_to_subject_relation_params)
        format.html { redirect_to academic_to_subject_relation_url(@academic_to_subject_relation), notice: "Academic to subject relation was successfully updated." }
        format.json { render :show, status: :ok, location: @academic_to_subject_relation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @academic_to_subject_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_to_subject_relations/1 or /academic_to_subject_relations/1.json
  def destroy
    @academic_to_subject_relation.destroy

    respond_to do |format|
      format.html { redirect_to academic_to_subject_relations_url, notice: "Academic to subject relation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academic_to_subject_relation
      @academic_to_subject_relation = AcademicToSubjectRelation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def academic_to_subject_relation_params
      params.require(:academic_to_subject_relation).permit(:subjects_id, :academicprograms_idbody)
    end
end
