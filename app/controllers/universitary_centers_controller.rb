class UniversitaryCentersController < ApplicationController
  before_action :set_universitary_center, only: %i[ show edit update destroy ]

  # GET /universitary_centers or /universitary_centers.json
  def index
    @universitary_centers = UniversitaryCenter.all
  end

  # GET /universitary_centers/1 or /universitary_centers/1.json
  def show
  end

  # GET /universitary_centers/new
  def new
    @universitary_center = UniversitaryCenter.new
  end

  # GET /universitary_centers/1/edit
  def edit
  end

  # POST /universitary_centers or /universitary_centers.json
  def create
    @universitary_center = UniversitaryCenter.new(universitary_center_params)

    respond_to do |format|
      if @universitary_center.save
        format.html { redirect_to universitary_center_url(@universitary_center), notice: "Universitary center was successfully created." }
        format.json { render :show, status: :created, location: @universitary_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @universitary_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universitary_centers/1 or /universitary_centers/1.json
  def update
    respond_to do |format|
      if @universitary_center.update(universitary_center_params)
        format.html { redirect_to universitary_center_url(@universitary_center), notice: "Universitary center was successfully updated." }
        format.json { render :show, status: :ok, location: @universitary_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @universitary_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universitary_centers/1 or /universitary_centers/1.json
  def destroy
    @universitary_center.destroy

    respond_to do |format|
      format.html { redirect_to universitary_centers_url, notice: "Universitary center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universitary_center
      @universitary_center = UniversitaryCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def universitary_center_params
      params.require(:universitary_center).permit(:universitary_center_name, :sede_id)
    end
end
