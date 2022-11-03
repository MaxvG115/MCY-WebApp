class SubjectStatuses < ApplicationRecord
    has_many :student_subecjt_status
    has_many :student_subject_relation, throught: :student_subecjt_status
end
