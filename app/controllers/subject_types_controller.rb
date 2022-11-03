class SubjectTypesController < ApplicationController
    def index
    end

    def new
        @subject_type = SubjectType.new
    end

    def create
        @subject_type = SubjectType.new(subject_types_params)
        if @subject_type.save
            redirect_to new_subject_type_path(@subject_type)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private 
        def subject_types_params
            params.require(:subject_type).permit(:name_subject_type)
        end
end
