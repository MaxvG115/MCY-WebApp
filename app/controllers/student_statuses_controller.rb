class StudentStatusesController < ApplicationController
    def index
    end

    def new 
        @student_statuses = StudentStatus.new
    end

    def create
        @student_statuses = StudentStatus.new(student_status_params)
        if @student_statuses.save
            redirect_to new_student_status_path(@student_statuses)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
        def student_status_params
            params.require(:student_status).permit(:status_name)
        end
end
