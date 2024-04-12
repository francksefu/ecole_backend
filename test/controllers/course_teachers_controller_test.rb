require "test_helper"

class CourseTeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_teacher = course_teachers(:one)
  end

  test "should get index" do
    get course_teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_course_teacher_url
    assert_response :success
  end

  test "should create course_teacher" do
    assert_difference("CourseTeacher.count") do
      post course_teachers_url, params: { course_teacher: {  } }
    end

    assert_redirected_to course_teacher_url(CourseTeacher.last)
  end

  test "should show course_teacher" do
    get course_teacher_url(@course_teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_teacher_url(@course_teacher)
    assert_response :success
  end

  test "should update course_teacher" do
    patch course_teacher_url(@course_teacher), params: { course_teacher: {  } }
    assert_redirected_to course_teacher_url(@course_teacher)
  end

  test "should destroy course_teacher" do
    assert_difference("CourseTeacher.count", -1) do
      delete course_teacher_url(@course_teacher)
    end

    assert_redirected_to course_teachers_url
  end
end
