class UniversitaryCentersController < ApplicationController
    def index
    end

    def new 
        sedes = Sede.all
        @sede = []
        sedes.each do |sede|
            @sede << [sede.sede_name, sede.id]
        end
        @universitary_center = UniversitaryCenter.new
    end

    def create
        @universitary_center = UniversitaryCenter.new(universitary_center_params)
        if @universitary_center.save
            redirect_to new_universitary_center_path(@universitary_center)
        else 
            render :new, status: :unprocessable_entity
        end
    end

    private
        def universitary_center_params
            params.require(:universitary_center).permit(:universitary_center_name, :sede_id)
        end  
end
