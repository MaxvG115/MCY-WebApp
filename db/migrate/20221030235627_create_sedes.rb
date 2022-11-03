class CreateSedes < ActiveRecord::Migration[6.1]
  def change
    create_table :sedes do |t|
      t.string :sede_name, null: false, index: { unique: true } 

      t.timestamps
    end
  end
end
