class CreateSubjectStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :subject_statuses do |t|
      t.string :status_name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
