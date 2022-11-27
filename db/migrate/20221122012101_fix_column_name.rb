class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    change_table :alumnos do |t|
      t.rename :name, :nombre
      t.rename :email, :correo
      t.rename :phone, :telefono
    end
  end
end
