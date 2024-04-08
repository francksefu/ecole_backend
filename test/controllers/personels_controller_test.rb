require "test_helper"

class PersonelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personel = personels(:one)
  end

  test "should get index" do
    get personels_url
    assert_response :success
  end

  test "should get new" do
    get new_personel_url
    assert_response :success
  end

  test "should create personel" do
    assert_difference("Personel.count") do
      post personels_url, params: { personel: { date_of_birth: @personel.date_of_birth, first_name: @personel.first_name, last_name: @personel.last_name, name: @personel.name, phone: @personel.phone, role: @personel.role } }
    end

    assert_redirected_to personel_url(Personel.last)
  end

  test "should show personel" do
    get personel_url(@personel)
    assert_response :success
  end

  test "should get edit" do
    get edit_personel_url(@personel)
    assert_response :success
  end

  test "should update personel" do
    patch personel_url(@personel), params: { personel: { date_of_birth: @personel.date_of_birth, first_name: @personel.first_name, last_name: @personel.last_name, name: @personel.name, phone: @personel.phone, role: @personel.role } }
    assert_redirected_to personel_url(@personel)
  end

  test "should destroy personel" do
    assert_difference("Personel.count", -1) do
      delete personel_url(@personel)
    end

    assert_redirected_to personels_url
  end
end
