class StudentStatus < ApplicationRecord
    has_many :historical_student_statuses
    has_many :alumnos, through: :historical_student_statuses
    validates :status_name, presence: true
end
