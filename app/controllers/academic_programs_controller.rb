class AcademicProgramsController < ApplicationController
    def index
    end

    def new 
        @academic_program = AcademicProgram.new
    end

    def create
        @academic_program = AcademicProgram.new(academic_programs_params)
        if @academic_program.save
            redirect_to new_academic_program_path(@academic_program)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def academic_programs_params
        params.require(:academic_program).permit(:name_academic_program)
    end
end
