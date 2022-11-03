class Subject < ApplicationRecord
    belongs_to :subject_type
    has_many :academicToSubjectRelations
    has_many :academicPrograms, through: :academicToSubjectRelations 
    has_many :student_subject_relations
    has_many :alumnos, through: :student_subject_relations
    
    validates :class_key, presence: true
    validates :duration_of_weeks, presence: true
    validates :classname, presence: true
    validates :subject_type_id, presence: true
end
