class CreateStudentSubjectRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :student_subject_relations do |t|
      t.integer :finalScore, null: false
      t.string :period 
      t.references :alumnos
      t.references :subjects
      t.timestamps
    end
  end
end
