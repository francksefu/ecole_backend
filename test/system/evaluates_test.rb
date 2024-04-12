require "application_system_test_case"

class EvaluatesTest < ApplicationSystemTestCase
  setup do
    @evaluate = evaluates(:one)
  end

  test "visiting the index" do
    visit evaluates_url
    assert_selector "h1", text: "Evaluates"
  end

  test "should create evaluate" do
    visit evaluates_url
    click_on "New evaluate"

    fill_in "Date evaluation", with: @evaluate.date_evaluation_id
    fill_in "Point", with: @evaluate.point
    fill_in "Promotion", with: @evaluate.promotion_id
    click_on "Create Evaluate"

    assert_text "Evaluate was successfully created"
    click_on "Back"
  end

  test "should update Evaluate" do
    visit evaluate_url(@evaluate)
    click_on "Edit this evaluate", match: :first

    fill_in "Date evaluation", with: @evaluate.date_evaluation_id
    fill_in "Point", with: @evaluate.point
    fill_in "Promotion", with: @evaluate.promotion_id
    click_on "Update Evaluate"

    assert_text "Evaluate was successfully updated"
    click_on "Back"
  end

  test "should destroy Evaluate" do
    visit evaluate_url(@evaluate)
    click_on "Destroy this evaluate", match: :first

    assert_text "Evaluate was successfully destroyed"
  end
end
