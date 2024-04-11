require "application_system_test_case"

class ObservationDisciplinariesTest < ApplicationSystemTestCase
  setup do
    @observation_disciplinary = observation_disciplinaries(:one)
  end

  test "visiting the index" do
    visit observation_disciplinaries_url
    assert_selector "h1", text: "Observation disciplinaries"
  end

  test "should create observation disciplinary" do
    visit observation_disciplinaries_url
    click_on "New observation disciplinary"

    fill_in "Data", with: @observation_disciplinary.data
    fill_in "Observation", with: @observation_disciplinary.observation
    click_on "Create Observation disciplinary"

    assert_text "Observation disciplinary was successfully created"
    click_on "Back"
  end

  test "should update Observation disciplinary" do
    visit observation_disciplinary_url(@observation_disciplinary)
    click_on "Edit this observation disciplinary", match: :first

    fill_in "Data", with: @observation_disciplinary.data
    fill_in "Observation", with: @observation_disciplinary.observation
    click_on "Update Observation disciplinary"

    assert_text "Observation disciplinary was successfully updated"
    click_on "Back"
  end

  test "should destroy Observation disciplinary" do
    visit observation_disciplinary_url(@observation_disciplinary)
    click_on "Destroy this observation disciplinary", match: :first

    assert_text "Observation disciplinary was successfully destroyed"
  end
end
