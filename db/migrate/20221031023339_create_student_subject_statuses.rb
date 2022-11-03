class CreateStudentSubjectStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :student_subject_statuses do |t|
      t.references :student_subject_relation
      t.references :subject_statuses
      t.timestamps
    end
  end
end
