class CreateAcademicToSubjectRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :academic_to_subject_relations do |t|
      t.references :subjects
      t.references :academicPrograms

      t.timestamps
    end
  end
end
