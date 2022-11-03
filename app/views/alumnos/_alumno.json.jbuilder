json.extract! alumno, :id, :matricula, :name, :email, :phone, :periodo_actual, :porcentaje_beca, :nivel, :unidades_permitdas_a_inscribir, :promedio_acomulado, :trimestre_acreditado, :ultimo_periodo_cursado, :fecha_entrada, :fecha_graduacion_planeada, :numero_cursos_cursados, :beca, :patrocinado, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
