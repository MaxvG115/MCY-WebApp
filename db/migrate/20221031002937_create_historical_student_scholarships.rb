class CreateHistoricalStudentScholarships < ActiveRecord::Migration[6.1]
  def change
    create_table :historical_student_scholarships do |t|
      t.references :alumnos
      t.references :scholarships

      t.timestamps
    end
  end
end
