require "application_system_test_case"

class DetailPaiementClassroomsTest < ApplicationSystemTestCase
  setup do
    @detail_paiement_classroom = detail_paiement_classrooms(:one)
  end

  test "visiting the index" do
    visit detail_paiement_classrooms_url
    assert_selector "h1", text: "Detail paiement classrooms"
  end

  test "should create detail paiement classroom" do
    visit detail_paiement_classrooms_url
    click_on "New detail paiement classroom"

    click_on "Create Detail paiement classroom"

    assert_text "Detail paiement classroom was successfully created"
    click_on "Back"
  end

  test "should update Detail paiement classroom" do
    visit detail_paiement_classroom_url(@detail_paiement_classroom)
    click_on "Edit this detail paiement classroom", match: :first

    click_on "Update Detail paiement classroom"

    assert_text "Detail paiement classroom was successfully updated"
    click_on "Back"
  end

  test "should destroy Detail paiement classroom" do
    visit detail_paiement_classroom_url(@detail_paiement_classroom)
    click_on "Destroy this detail paiement classroom", match: :first

    assert_text "Detail paiement classroom was successfully destroyed"
  end
end
