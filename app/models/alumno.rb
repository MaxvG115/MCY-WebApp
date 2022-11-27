class Alumno < ApplicationRecord
    has_many :historical_student_statuses
    has_many :student_status, through: :historical_student_statuses
    has_many :historical_student_scholarship
    has_many :scholarships, through: :historical_student_scholarship
    belongs_to :universitary_centers
    has_many :student_subject_relations
    has_many :subjects, through: :student_subject_relations
    
    def self.import(file)
        CSV.foreach(file, encoding:'bom|utf-8', headers: true) do |row|
            Alumno.create! row.to_hash
        end
    end
end
