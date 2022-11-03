class AcademicProgram < ApplicationRecord
    has_many :academicToSubjectRelations
    has_many :subjects, through: :academicToSubjectRelations
end
