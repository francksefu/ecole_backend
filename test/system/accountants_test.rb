require "application_system_test_case"

class AccountantsTest < ApplicationSystemTestCase
  setup do
    @accountant = accountants(:one)
  end

  test "visiting the index" do
    visit accountants_url
    assert_selector "h1", text: "Accountants"
  end

  test "should create accountant" do
    visit accountants_url
    click_on "New accountant"

    fill_in "Date of birth", with: @accountant.date_of_birth
    fill_in "First name", with: @accountant.first_name
    fill_in "Last name", with: @accountant.last_name
    fill_in "Name", with: @accountant.name
    fill_in "Phone", with: @accountant.phone
    click_on "Create Accountant"

    assert_text "Accountant was successfully created"
    click_on "Back"
  end

  test "should update Accountant" do
    visit accountant_url(@accountant)
    click_on "Edit this accountant", match: :first

    fill_in "Date of birth", with: @accountant.date_of_birth
    fill_in "First name", with: @accountant.first_name
    fill_in "Last name", with: @accountant.last_name
    fill_in "Name", with: @accountant.name
    fill_in "Phone", with: @accountant.phone
    click_on "Update Accountant"

    assert_text "Accountant was successfully updated"
    click_on "Back"
  end

  test "should destroy Accountant" do
    visit accountant_url(@accountant)
    click_on "Destroy this accountant", match: :first

    assert_text "Accountant was successfully destroyed"
  end
end
