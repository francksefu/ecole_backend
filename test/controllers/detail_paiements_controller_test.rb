require "test_helper"

class DetailPaiementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_paiement = detail_paiements(:one)
  end

  test "should get index" do
    get detail_paiements_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_paiement_url
    assert_response :success
  end

  test "should create detail_paiement" do
    assert_difference("DetailPaiement.count") do
      post detail_paiements_url, params: { detail_paiement: { description: @detail_paiement.description, end_date: @detail_paiement.end_date, frais_name: @detail_paiement.frais_name, montant: @detail_paiement.montant } }
    end

    assert_redirected_to detail_paiement_url(DetailPaiement.last)
  end

  test "should show detail_paiement" do
    get detail_paiement_url(@detail_paiement)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_paiement_url(@detail_paiement)
    assert_response :success
  end

  test "should update detail_paiement" do
    patch detail_paiement_url(@detail_paiement), params: { detail_paiement: { description: @detail_paiement.description, end_date: @detail_paiement.end_date, frais_name: @detail_paiement.frais_name, montant: @detail_paiement.montant } }
    assert_redirected_to detail_paiement_url(@detail_paiement)
  end

  test "should destroy detail_paiement" do
    assert_difference("DetailPaiement.count", -1) do
      delete detail_paiement_url(@detail_paiement)
    end

    assert_redirected_to detail_paiements_url
  end
end
