class CreateScholarships < ActiveRecord::Migration[6.1]
  def change
    create_table :scholarships do |t|
      t.integer :beca_base
      t.string :nombre_beca

      t.timestamps
    end
  end
end
