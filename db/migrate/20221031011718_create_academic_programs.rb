class CreateAcademicPrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :academic_programs do |t|
      t.string :name_academic_program, null: false, index: {unique: true}   

      t.timestamps
    end
  end
end
