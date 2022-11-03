class CreateHistoricalStudentStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :historical_student_statuses do |t|
      t.references :studentStatus
      t.references :alumnos

      t.timestamps
    end
  end
end
