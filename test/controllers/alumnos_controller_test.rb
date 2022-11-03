require "test_helper"

class AlumnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get alumnos_url
    assert_response :success
  end

  test "should get new" do
    get new_alumno_url
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post alumnos_url, params: { alumno: { beca: @alumno.beca, email: @alumno.email, fecha_entrada: @alumno.fecha_entrada, fecha_graduacion_planeada: @alumno.fecha_graduacion_planeada, matricula: @alumno.matricula, name: @alumno.name, nivel: @alumno.nivel, numero_cursos_cursados: @alumno.numero_cursos_cursados, patrocinado: @alumno.patrocinado, periodo_actual: @alumno.periodo_actual, phone: @alumno.phone, porcentaje_beca: @alumno.porcentaje_beca, promedio_acomulado: @alumno.promedio_acomulado, trimestre_acreditado: @alumno.trimestre_acreditado, ultimo_periodo_cursado: @alumno.ultimo_periodo_cursado, unidades_permitdas_a_inscribir: @alumno.unidades_permitdas_a_inscribir } }
    end

    assert_redirected_to alumno_url(Alumno.last)
  end

  test "should show alumno" do
    get alumno_url(@alumno)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumno_url(@alumno)
    assert_response :success
  end

  test "should update alumno" do
    patch alumno_url(@alumno), params: { alumno: { beca: @alumno.beca, email: @alumno.email, fecha_entrada: @alumno.fecha_entrada, fecha_graduacion_planeada: @alumno.fecha_graduacion_planeada, matricula: @alumno.matricula, name: @alumno.name, nivel: @alumno.nivel, numero_cursos_cursados: @alumno.numero_cursos_cursados, patrocinado: @alumno.patrocinado, periodo_actual: @alumno.periodo_actual, phone: @alumno.phone, porcentaje_beca: @alumno.porcentaje_beca, promedio_acomulado: @alumno.promedio_acomulado, trimestre_acreditado: @alumno.trimestre_acreditado, ultimo_periodo_cursado: @alumno.ultimo_periodo_cursado, unidades_permitdas_a_inscribir: @alumno.unidades_permitdas_a_inscribir } }
    assert_redirected_to alumno_url(@alumno)
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete alumno_url(@alumno)
    end

    assert_redirected_to alumnos_url
  end
end
