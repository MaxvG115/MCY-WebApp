require "application_system_test_case"

class AlumnosTest < ApplicationSystemTestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "visiting the index" do
    visit alumnos_url
    assert_selector "h1", text: "Alumnos"
  end

  test "creating a Alumno" do
    visit alumnos_url
    click_on "New Alumno"

    fill_in "Beca", with: @alumno.beca
    fill_in "Email", with: @alumno.email
    fill_in "Fecha entrada", with: @alumno.fecha_entrada
    fill_in "Fecha graduacion planeada", with: @alumno.fecha_graduacion_planeada
    fill_in "Matricula", with: @alumno.matricula
    fill_in "Name", with: @alumno.name
    fill_in "Nivel", with: @alumno.nivel
    fill_in "Numero cursos cursados", with: @alumno.numero_cursos_cursados
    fill_in "Patrocinado", with: @alumno.patrocinado
    fill_in "Periodo actual", with: @alumno.periodo_actual
    fill_in "Phone", with: @alumno.phone
    fill_in "Porcentaje beca", with: @alumno.porcentaje_beca
    fill_in "Promedio acomulado", with: @alumno.promedio_acomulado
    fill_in "Trimestre acreditado", with: @alumno.trimestre_acreditado
    fill_in "Ultimo periodo cursado", with: @alumno.ultimo_periodo_cursado
    fill_in "Unidades permitdas a inscribir", with: @alumno.unidades_permitdas_a_inscribir
    click_on "Create Alumno"

    assert_text "Alumno was successfully created"
    click_on "Back"
  end

  test "updating a Alumno" do
    visit alumnos_url
    click_on "Edit", match: :first

    fill_in "Beca", with: @alumno.beca
    fill_in "Email", with: @alumno.email
    fill_in "Fecha entrada", with: @alumno.fecha_entrada
    fill_in "Fecha graduacion planeada", with: @alumno.fecha_graduacion_planeada
    fill_in "Matricula", with: @alumno.matricula
    fill_in "Name", with: @alumno.name
    fill_in "Nivel", with: @alumno.nivel
    fill_in "Numero cursos cursados", with: @alumno.numero_cursos_cursados
    fill_in "Patrocinado", with: @alumno.patrocinado
    fill_in "Periodo actual", with: @alumno.periodo_actual
    fill_in "Phone", with: @alumno.phone
    fill_in "Porcentaje beca", with: @alumno.porcentaje_beca
    fill_in "Promedio acomulado", with: @alumno.promedio_acomulado
    fill_in "Trimestre acreditado", with: @alumno.trimestre_acreditado
    fill_in "Ultimo periodo cursado", with: @alumno.ultimo_periodo_cursado
    fill_in "Unidades permitdas a inscribir", with: @alumno.unidades_permitdas_a_inscribir
    click_on "Update Alumno"

    assert_text "Alumno was successfully updated"
    click_on "Back"
  end

  test "destroying a Alumno" do
    visit alumnos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alumno was successfully destroyed"
  end
end
