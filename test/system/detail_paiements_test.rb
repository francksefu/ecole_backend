require "application_system_test_case"

class DetailPaiementsTest < ApplicationSystemTestCase
  setup do
    @detail_paiement = detail_paiements(:one)
  end

  test "visiting the index" do
    visit detail_paiements_url
    assert_selector "h1", text: "Detail paiements"
  end

  test "should create detail paiement" do
    visit detail_paiements_url
    click_on "New detail paiement"

    fill_in "Description", with: @detail_paiement.description
    fill_in "End date", with: @detail_paiement.end_date
    fill_in "Frais name", with: @detail_paiement.frais_name
    fill_in "Montant", with: @detail_paiement.montant
    click_on "Create Detail paiement"

    assert_text "Detail paiement was successfully created"
    click_on "Back"
  end

  test "should update Detail paiement" do
    visit detail_paiement_url(@detail_paiement)
    click_on "Edit this detail paiement", match: :first

    fill_in "Description", with: @detail_paiement.description
    fill_in "End date", with: @detail_paiement.end_date
    fill_in "Frais name", with: @detail_paiement.frais_name
    fill_in "Montant", with: @detail_paiement.montant
    click_on "Update Detail paiement"

    assert_text "Detail paiement was successfully updated"
    click_on "Back"
  end

  test "should destroy Detail paiement" do
    visit detail_paiement_url(@detail_paiement)
    click_on "Destroy this detail paiement", match: :first

    assert_text "Detail paiement was successfully destroyed"
  end
end
