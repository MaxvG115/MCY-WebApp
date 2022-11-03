class StudentsToUniversityCenter < ActiveRecord::Migration[6.1]
  def change
    change_table :alumnos do |t|
      t.references :universitary_centers
    end
  end
end
