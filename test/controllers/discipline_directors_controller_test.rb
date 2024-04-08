require "test_helper"

class DisciplineDirectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline_director = discipline_directors(:one)
  end

  test "should get index" do
    get discipline_directors_url
    assert_response :success
  end

  test "should get new" do
    get new_discipline_director_url
    assert_response :success
  end

  test "should create discipline_director" do
    assert_difference("DisciplineDirector.count") do
      post discipline_directors_url, params: { discipline_director: { date_of_birth: @discipline_director.date_of_birth, first_name: @discipline_director.first_name, last_name: @discipline_director.last_name, name: @discipline_director.name, phone: @discipline_director.phone } }
    end

    assert_redirected_to discipline_director_url(DisciplineDirector.last)
  end

  test "should show discipline_director" do
    get discipline_director_url(@discipline_director)
    assert_response :success
  end

  test "should get edit" do
    get edit_discipline_director_url(@discipline_director)
    assert_response :success
  end

  test "should update discipline_director" do
    patch discipline_director_url(@discipline_director), params: { discipline_director: { date_of_birth: @discipline_director.date_of_birth, first_name: @discipline_director.first_name, last_name: @discipline_director.last_name, name: @discipline_director.name, phone: @discipline_director.phone } }
    assert_redirected_to discipline_director_url(@discipline_director)
  end

  test "should destroy discipline_director" do
    assert_difference("DisciplineDirector.count", -1) do
      delete discipline_director_url(@discipline_director)
    end

    assert_redirected_to discipline_directors_url
  end
end
