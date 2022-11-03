class StudentSubjectStatus < ApplicationRecord
    belongs_to :subject_statuses
    belongs_to :student_subject_relation
end
