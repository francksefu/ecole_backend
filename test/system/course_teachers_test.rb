require "application_system_test_case"

class CourseTeachersTest < ApplicationSystemTestCase
  setup do
    @course_teacher = course_teachers(:one)
  end

  test "visiting the index" do
    visit course_teachers_url
    assert_selector "h1", text: "Course teachers"
  end

  test "should create course teacher" do
    visit course_teachers_url
    click_on "New course teacher"

    click_on "Create Course teacher"

    assert_text "Course teacher was successfully created"
    click_on "Back"
  end

  test "should update Course teacher" do
    visit course_teacher_url(@course_teacher)
    click_on "Edit this course teacher", match: :first

    click_on "Update Course teacher"

    assert_text "Course teacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Course teacher" do
    visit course_teacher_url(@course_teacher)
    click_on "Destroy this course teacher", match: :first

    assert_text "Course teacher was successfully destroyed"
  end
end
