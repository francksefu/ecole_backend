require "test_helper"

class DateEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_evaluation = date_evaluations(:one)
  end

  test "should get index" do
    get date_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_date_evaluation_url
    assert_response :success
  end

  test "should create date_evaluation" do
    assert_difference("DateEvaluation.count") do
      post date_evaluations_url, params: { date_evaluation: { classroom_course_id: @date_evaluation.classroom_course_id, date: @date_evaluation.date, is_remote: @date_evaluation.is_remote, maximum: @date_evaluation.maximum, periode_id: @date_evaluation.periode_id } }
    end

    assert_redirected_to date_evaluation_url(DateEvaluation.last)
  end

  test "should show date_evaluation" do
    get date_evaluation_url(@date_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_evaluation_url(@date_evaluation)
    assert_response :success
  end

  test "should update date_evaluation" do
    patch date_evaluation_url(@date_evaluation), params: { date_evaluation: { classroom_course_id: @date_evaluation.classroom_course_id, date: @date_evaluation.date, is_remote: @date_evaluation.is_remote, maximum: @date_evaluation.maximum, periode_id: @date_evaluation.periode_id } }
    assert_redirected_to date_evaluation_url(@date_evaluation)
  end

  test "should destroy date_evaluation" do
    assert_difference("DateEvaluation.count", -1) do
      delete date_evaluation_url(@date_evaluation)
    end

    assert_redirected_to date_evaluations_url
  end
end
