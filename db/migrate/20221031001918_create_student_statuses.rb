class CreateStudentStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :student_statuses do |t|
      t.string :status_name, index: { unique: true }

      t.timestamps
    end
  end
end
