require "application_system_test_case"

class SchedulesTest < ApplicationSystemTestCase
  setup do
    @schedule = schedules(:one)
  end

  test "visiting the index" do
    visit schedules_url
    assert_selector "h1", text: "Schedules"
  end

  test "should create schedule" do
    visit schedules_url
    click_on "New schedule"

    fill_in "Date", with: @schedule.date
    fill_in "Fifth h", with: @schedule.fifth_H
    fill_in "First h", with: @schedule.first_H
    fill_in "Fourth h", with: @schedule.fourth_H
    fill_in "Second h", with: @schedule.second_H
    fill_in "Seven h", with: @schedule.seven_H
    fill_in "Sixth h", with: @schedule.sixth_H
    fill_in "Third h", with: @schedule.third_H
    click_on "Create Schedule"

    assert_text "Schedule was successfully created"
    click_on "Back"
  end

  test "should update Schedule" do
    visit schedule_url(@schedule)
    click_on "Edit this schedule", match: :first

    fill_in "Date", with: @schedule.date
    fill_in "Fifth h", with: @schedule.fifth_H
    fill_in "First h", with: @schedule.first_H
    fill_in "Fourth h", with: @schedule.fourth_H
    fill_in "Second h", with: @schedule.second_H
    fill_in "Seven h", with: @schedule.seven_H
    fill_in "Sixth h", with: @schedule.sixth_H
    fill_in "Third h", with: @schedule.third_H
    click_on "Update Schedule"

    assert_text "Schedule was successfully updated"
    click_on "Back"
  end

  test "should destroy Schedule" do
    visit schedule_url(@schedule)
    click_on "Destroy this schedule", match: :first

    assert_text "Schedule was successfully destroyed"
  end
end
