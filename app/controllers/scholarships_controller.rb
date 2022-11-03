class ScholarshipsController < ApplicationController
    def index
    end

    def new
        @scholarship = Scholarship.new
    end

    def create
        @scholarship = Scholarship.new(scholarship_params)
        if @scholarship.save
            redirect_to new_scholarship_path(@scholarship)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
        def scholarship_params
            params.require(:scholarship).permit(:beca_base, :nombre_beca)
        end
end
