class SubjectsController < ApplicationController
    def index
    end

    def new
        subject_types = SubjectType.all
        @subject_types = []
        subject_types.each do |subject_type|
            @subject_types << [subject_type.name_subject_type, subject_type.id]
        end
        @academic_programs = AcademicProgram.all
        puts '++++++++++++++++++++++++++++++++++++'
        # puts @academic_programs
        puts @academic_programs[0].id
        @subject = Subject.new
    end

    def create
        @subject = Subject.new(subject_params)
        if @subject.save
            redirect_to new_subject_path(@subject)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
        def subject_params
            params.require(:subject).permit(:class_key, :duration_of_weeks, :classname, :subject_type_id)
        end
end
