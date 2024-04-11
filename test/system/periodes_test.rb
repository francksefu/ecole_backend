require "application_system_test_case"

class PeriodesTest < ApplicationSystemTestCase
  setup do
    @periode = periodes(:one)
  end

  test "visiting the index" do
    visit periodes_url
    assert_selector "h1", text: "Periodes"
  end

  test "should create periode" do
    visit periodes_url
    click_on "New periode"

    fill_in "End date", with: @periode.end_date
    fill_in "Name", with: @periode.name
    fill_in "Start date", with: @periode.start_date
    click_on "Create Periode"

    assert_text "Periode was successfully created"
    click_on "Back"
  end

  test "should update Periode" do
    visit periode_url(@periode)
    click_on "Edit this periode", match: :first

    fill_in "End date", with: @periode.end_date
    fill_in "Name", with: @periode.name
    fill_in "Start date", with: @periode.start_date
    click_on "Update Periode"

    assert_text "Periode was successfully updated"
    click_on "Back"
  end

  test "should destroy Periode" do
    visit periode_url(@periode)
    click_on "Destroy this periode", match: :first

    assert_text "Periode was successfully destroyed"
  end
end
