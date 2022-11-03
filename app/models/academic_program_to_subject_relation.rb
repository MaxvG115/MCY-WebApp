class AcademicProgramToSubjectRelation < ApplicationRecord
    belongs_to :subjects
    belongs_to :academicPrograms
    validates :name_academic_program
end
