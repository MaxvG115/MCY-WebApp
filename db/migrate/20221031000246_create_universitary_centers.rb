class CreateUniversitaryCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :universitary_centers do |t|
      t.string :universitary_center_name, null: false, index: { unique: true }
      t.references :sede

      t.timestamps
    end
  end
end
