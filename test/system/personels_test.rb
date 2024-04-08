require "application_system_test_case"

class PersonelsTest < ApplicationSystemTestCase
  setup do
    @personel = personels(:one)
  end

  test "visiting the index" do
    visit personels_url
    assert_selector "h1", text: "Personels"
  end

  test "should create personel" do
    visit personels_url
    click_on "New personel"

    fill_in "Date of birth", with: @personel.date_of_birth
    fill_in "First name", with: @personel.first_name
    fill_in "Last name", with: @personel.last_name
    fill_in "Name", with: @personel.name
    fill_in "Phone", with: @personel.phone
    fill_in "Role", with: @personel.role
    click_on "Create Personel"

    assert_text "Personel was successfully created"
    click_on "Back"
  end

  test "should update Personel" do
    visit personel_url(@personel)
    click_on "Edit this personel", match: :first

    fill_in "Date of birth", with: @personel.date_of_birth
    fill_in "First name", with: @personel.first_name
    fill_in "Last name", with: @personel.last_name
    fill_in "Name", with: @personel.name
    fill_in "Phone", with: @personel.phone
    fill_in "Role", with: @personel.role
    click_on "Update Personel"

    assert_text "Personel was successfully updated"
    click_on "Back"
  end

  test "should destroy Personel" do
    visit personel_url(@personel)
    click_on "Destroy this personel", match: :first

    assert_text "Personel was successfully destroyed"
  end
end
