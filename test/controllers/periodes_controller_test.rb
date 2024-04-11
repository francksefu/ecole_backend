require "test_helper"

class PeriodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @periode = periodes(:one)
  end

  test "should get index" do
    get periodes_url
    assert_response :success
  end

  test "should get new" do
    get new_periode_url
    assert_response :success
  end

  test "should create periode" do
    assert_difference("Periode.count") do
      post periodes_url, params: { periode: { end_date: @periode.end_date, name: @periode.name, start_date: @periode.start_date } }
    end

    assert_redirected_to periode_url(Periode.last)
  end

  test "should show periode" do
    get periode_url(@periode)
    assert_response :success
  end

  test "should get edit" do
    get edit_periode_url(@periode)
    assert_response :success
  end

  test "should update periode" do
    patch periode_url(@periode), params: { periode: { end_date: @periode.end_date, name: @periode.name, start_date: @periode.start_date } }
    assert_redirected_to periode_url(@periode)
  end

  test "should destroy periode" do
    assert_difference("Periode.count", -1) do
      delete periode_url(@periode)
    end

    assert_redirected_to periodes_url
  end
end
