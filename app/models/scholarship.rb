class Scholarship < ApplicationRecord
    has_many :historical_student_scholarship
    has_many :alumnos, through: :historical_student_scholarship
    validates :beca_base, presence: true
    validates :nombre_beca, presence: true
end
