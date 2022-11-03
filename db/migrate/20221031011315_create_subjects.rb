class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :class_key, null: false, index: {unique: true}  
      t.integer :duration_of_weeks, null: false
      t.string :classname, null: false, index: {unique: true}   
      t.references :subject_type

      t.timestamps
    end
  end
end
