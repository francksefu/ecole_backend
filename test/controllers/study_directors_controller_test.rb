require "test_helper"

class StudyDirectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_director = study_directors(:one)
  end

  test "should get index" do
    get study_directors_url
    assert_response :success
  end

  test "should get new" do
    get new_study_director_url
    assert_response :success
  end

  test "should create study_director" do
    assert_difference("StudyDirector.count") do
      post study_directors_url, params: { study_director: { date_of_birth: @study_director.date_of_birth, first_name: @study_director.first_name, last_name: @study_director.last_name, name: @study_director.name, phone: @study_director.phone } }
    end

    assert_redirected_to study_director_url(StudyDirector.last)
  end

  test "should show study_director" do
    get study_director_url(@study_director)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_director_url(@study_director)
    assert_response :success
  end

  test "should update study_director" do
    patch study_director_url(@study_director), params: { study_director: { date_of_birth: @study_director.date_of_birth, first_name: @study_director.first_name, last_name: @study_director.last_name, name: @study_director.name, phone: @study_director.phone } }
    assert_redirected_to study_director_url(@study_director)
  end

  test "should destroy study_director" do
    assert_difference("StudyDirector.count", -1) do
      delete study_director_url(@study_director)
    end

    assert_redirected_to study_directors_url
  end
end
