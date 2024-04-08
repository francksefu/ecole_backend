require "application_system_test_case"

class DisciplineDirectorsTest < ApplicationSystemTestCase
  setup do
    @discipline_director = discipline_directors(:one)
  end

  test "visiting the index" do
    visit discipline_directors_url
    assert_selector "h1", text: "Discipline directors"
  end

  test "should create discipline director" do
    visit discipline_directors_url
    click_on "New discipline director"

    fill_in "Date of birth", with: @discipline_director.date_of_birth
    fill_in "First name", with: @discipline_director.first_name
    fill_in "Last name", with: @discipline_director.last_name
    fill_in "Name", with: @discipline_director.name
    fill_in "Phone", with: @discipline_director.phone
    click_on "Create Discipline director"

    assert_text "Discipline director was successfully created"
    click_on "Back"
  end

  test "should update Discipline director" do
    visit discipline_director_url(@discipline_director)
    click_on "Edit this discipline director", match: :first

    fill_in "Date of birth", with: @discipline_director.date_of_birth
    fill_in "First name", with: @discipline_director.first_name
    fill_in "Last name", with: @discipline_director.last_name
    fill_in "Name", with: @discipline_director.name
    fill_in "Phone", with: @discipline_director.phone
    click_on "Update Discipline director"

    assert_text "Discipline director was successfully updated"
    click_on "Back"
  end

  test "should destroy Discipline director" do
    visit discipline_director_url(@discipline_director)
    click_on "Destroy this discipline director", match: :first

    assert_text "Discipline director was successfully destroyed"
  end
end
