require "test_helper"

class ClassroomCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classroom_course = classroom_courses(:one)
  end

  test "should get index" do
    get classroom_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_classroom_course_url
    assert_response :success
  end

  test "should create classroom_course" do
    assert_difference("ClassroomCourse.count") do
      post classroom_courses_url, params: { classroom_course: {  } }
    end

    assert_redirected_to classroom_course_url(ClassroomCourse.last)
  end

  test "should show classroom_course" do
    get classroom_course_url(@classroom_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_classroom_course_url(@classroom_course)
    assert_response :success
  end

  test "should update classroom_course" do
    patch classroom_course_url(@classroom_course), params: { classroom_course: {  } }
    assert_redirected_to classroom_course_url(@classroom_course)
  end

  test "should destroy classroom_course" do
    assert_difference("ClassroomCourse.count", -1) do
      delete classroom_course_url(@classroom_course)
    end

    assert_redirected_to classroom_courses_url
  end
end
