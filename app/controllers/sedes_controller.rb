class SedesController < ApplicationController
  def index
    @sedes = Sede.all
  end

  def show
    @sede = Sede.find(params[:id])
  end

  def new
    @sede = Sede.new
  end

  def create
    @sede = Sede.new(sede_params)

    if @sede.save
      redirect_to new_sede_path(@sede)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit 
  end

  def destroy
    @sede = Sede.find(params[:id])
    @sede.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def sede_params
      params.require(:sede).permit(:sede_name)
    end
end
