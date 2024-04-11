require "test_helper"

class DetailPaiementClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail_paiement_classroom = detail_paiement_classrooms(:one)
  end

  test "should get index" do
    get detail_paiement_classrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_paiement_classroom_url
    assert_response :success
  end

  test "should create detail_paiement_classroom" do
    assert_difference("DetailPaiementClassroom.count") do
      post detail_paiement_classrooms_url, params: { detail_paiement_classroom: {  } }
    end

    assert_redirected_to detail_paiement_classroom_url(DetailPaiementClassroom.last)
  end

  test "should show detail_paiement_classroom" do
    get detail_paiement_classroom_url(@detail_paiement_classroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_paiement_classroom_url(@detail_paiement_classroom)
    assert_response :success
  end

  test "should update detail_paiement_classroom" do
    patch detail_paiement_classroom_url(@detail_paiement_classroom), params: { detail_paiement_classroom: {  } }
    assert_redirected_to detail_paiement_classroom_url(@detail_paiement_classroom)
  end

  test "should destroy detail_paiement_classroom" do
    assert_difference("DetailPaiementClassroom.count", -1) do
      delete detail_paiement_classroom_url(@detail_paiement_classroom)
    end

    assert_redirected_to detail_paiement_classrooms_url
  end
end
