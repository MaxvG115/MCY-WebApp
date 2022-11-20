class StudentSubjectRelationsController < ApplicationController
  before_action :set_student_subject_relation, only: %i[ show edit update destroy ]

  # GET /student_subject_relations or /student_subject_relations.json
  def index
    @student_subject_relations = StudentSubjectRelation.all
  end

  # GET /student_subject_relations/1 or /student_subject_relations/1.json
  def show
  end

  # GET /student_subject_relations/new
  def new
    @student_subject_relation = StudentSubjectRelation.new
  end

  # GET /student_subject_relations/1/edit
  def edit
  end

  # POST /student_subject_relations or /student_subject_relations.json
  def create
    @student_subject_relation = StudentSubjectRelation.new(student_subject_relation_params)

    respond_to do |format|
      if @student_subject_relation.save
        format.html { redirect_to student_subject_relation_url(@student_subject_relation), notice: "Student subject relation was successfully created." }
        format.json { render :show, status: :created, location: @student_subject_relation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_subject_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_subject_relations/1 or /student_subject_relations/1.json
  def update
    respond_to do |format|
      if @student_subject_relation.update(student_subject_relation_params)
        format.html { redirect_to student_subject_relation_url(@student_subject_relation), notice: "Student subject relation was successfully updated." }
        format.json { render :show, status: :ok, location: @student_subject_relation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_subject_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_subject_relations/1 or /student_subject_relations/1.json
  def destroy
    @student_subject_relation.destroy

    respond_to do |format|
      format.html { redirect_to student_subject_relations_url, notice: "Student subject relation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_subject_relation
      @student_subject_relation = StudentSubjectRelation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_subject_relation_params
      params.require(:student_subject_relation).permit(:finalscore, :period, :alumnos_id, :subjects_id)
    end
end
