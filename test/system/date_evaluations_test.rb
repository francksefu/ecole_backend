require "application_system_test_case"

class DateEvaluationsTest < ApplicationSystemTestCase
  setup do
    @date_evaluation = date_evaluations(:one)
  end

  test "visiting the index" do
    visit date_evaluations_url
    assert_selector "h1", text: "Date evaluations"
  end

  test "should create date evaluation" do
    visit date_evaluations_url
    click_on "New date evaluation"

    fill_in "Classroom course", with: @date_evaluation.classroom_course_id
    fill_in "Date", with: @date_evaluation.date
    check "Is remote" if @date_evaluation.is_remote
    fill_in "Maximum", with: @date_evaluation.maximum
    fill_in "Periode", with: @date_evaluation.periode_id
    click_on "Create Date evaluation"

    assert_text "Date evaluation was successfully created"
    click_on "Back"
  end

  test "should update Date evaluation" do
    visit date_evaluation_url(@date_evaluation)
    click_on "Edit this date evaluation", match: :first

    fill_in "Classroom course", with: @date_evaluation.classroom_course_id
    fill_in "Date", with: @date_evaluation.date
    check "Is remote" if @date_evaluation.is_remote
    fill_in "Maximum", with: @date_evaluation.maximum
    fill_in "Periode", with: @date_evaluation.periode_id
    click_on "Update Date evaluation"

    assert_text "Date evaluation was successfully updated"
    click_on "Back"
  end

  test "should destroy Date evaluation" do
    visit date_evaluation_url(@date_evaluation)
    click_on "Destroy this date evaluation", match: :first

    assert_text "Date evaluation was successfully destroyed"
  end
end
