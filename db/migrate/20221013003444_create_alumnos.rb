class CreateAlumnos < ActiveRecord::Migration[6.1]
  def change
    create_table :alumnos do |t|
      t.string :matricula, null: false, index: {unique: true}  
      t.string :name, null: false
      t.string :email, null: false, index: {unique: true}  
      t.string :phone, null: false, index: {unique: true}  
      t.string :periodo_actual, null: false
      t.integer :porcentaje_beca 
      t.string :nivel, null: false
      t.integer :unidades_permitdas_a_inscribir, null: false
      t.float :promedio_acomulado, null: false
      t.string :trimestre_acreditado
      t.string :ultimo_periodo_cursado
      t.datetime :fecha_entrada, null: false
      t.datetime :fecha_graduacion_planeada, null: false
      t.integer :numero_cursos_cursados
      t.integer :patrocinado

      t.timestamps
    end
  end
end
