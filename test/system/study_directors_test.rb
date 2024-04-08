require "application_system_test_case"

class StudyDirectorsTest < ApplicationSystemTestCase
  setup do
    @study_director = study_directors(:one)
  end

  test "visiting the index" do
    visit study_directors_url
    assert_selector "h1", text: "Study directors"
  end

  test "should create study director" do
    visit study_directors_url
    click_on "New study director"

    fill_in "Date of birth", with: @study_director.date_of_birth
    fill_in "First name", with: @study_director.first_name
    fill_in "Last name", with: @study_director.last_name
    fill_in "Name", with: @study_director.name
    fill_in "Phone", with: @study_director.phone
    click_on "Create Study director"

    assert_text "Study director was successfully created"
    click_on "Back"
  end

  test "should update Study director" do
    visit study_director_url(@study_director)
    click_on "Edit this study director", match: :first

    fill_in "Date of birth", with: @study_director.date_of_birth
    fill_in "First name", with: @study_director.first_name
    fill_in "Last name", with: @study_director.last_name
    fill_in "Name", with: @study_director.name
    fill_in "Phone", with: @study_director.phone
    click_on "Update Study director"

    assert_text "Study director was successfully updated"
    click_on "Back"
  end

  test "should destroy Study director" do
    visit study_director_url(@study_director)
    click_on "Destroy this study director", match: :first

    assert_text "Study director was successfully destroyed"
  end
end
