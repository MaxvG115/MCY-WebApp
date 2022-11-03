class HistoricalStudentStatus < ApplicationRecord
    belongs_to :alumnos
    belongs_to :student_status

end
