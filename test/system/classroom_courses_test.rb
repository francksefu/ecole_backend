require "application_system_test_case"

class ClassroomCoursesTest < ApplicationSystemTestCase
  setup do
    @classroom_course = classroom_courses(:one)
  end

  test "visiting the index" do
    visit classroom_courses_url
    assert_selector "h1", text: "Classroom courses"
  end

  test "should create classroom course" do
    visit classroom_courses_url
    click_on "New classroom course"

    click_on "Create Classroom course"

    assert_text "Classroom course was successfully created"
    click_on "Back"
  end

  test "should update Classroom course" do
    visit classroom_course_url(@classroom_course)
    click_on "Edit this classroom course", match: :first

    click_on "Update Classroom course"

    assert_text "Classroom course was successfully updated"
    click_on "Back"
  end

  test "should destroy Classroom course" do
    visit classroom_course_url(@classroom_course)
    click_on "Destroy this classroom course", match: :first

    assert_text "Classroom course was successfully destroyed"
  end
end
