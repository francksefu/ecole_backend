require "application_system_test_case"

class ParentsTest < ApplicationSystemTestCase
  setup do
    @parent = parents(:one)
  end

  test "visiting the index" do
    visit parents_url
    assert_selector "h1", text: "Parents"
  end

  test "should create parent" do
    visit parents_url
    click_on "New parent"

    fill_in "Date of birth", with: @parent.date_of_birth
    fill_in "First name", with: @parent.first_name
    fill_in "Last name", with: @parent.last_name
    fill_in "Name", with: @parent.name
    fill_in "Phone", with: @parent.phone
    click_on "Create Parent"

    assert_text "Parent was successfully created"
    click_on "Back"
  end

  test "should update Parent" do
    visit parent_url(@parent)
    click_on "Edit this parent", match: :first

    fill_in "Date of birth", with: @parent.date_of_birth
    fill_in "First name", with: @parent.first_name
    fill_in "Last name", with: @parent.last_name
    fill_in "Name", with: @parent.name
    fill_in "Phone", with: @parent.phone
    click_on "Update Parent"

    assert_text "Parent was successfully updated"
    click_on "Back"
  end

  test "should destroy Parent" do
    visit parent_url(@parent)
    click_on "Destroy this parent", match: :first

    assert_text "Parent was successfully destroyed"
  end
end
