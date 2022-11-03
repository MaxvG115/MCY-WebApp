class CreateSubjectTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :subject_types do |t|
      t.string :name_subject_type, null: false, index: {unique: true}  

      t.timestamps
    end
  end
end
