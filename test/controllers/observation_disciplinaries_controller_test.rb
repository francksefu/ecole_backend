require "test_helper"

class ObservationDisciplinariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @observation_disciplinary = observation_disciplinaries(:one)
  end

  test "should get index" do
    get observation_disciplinaries_url
    assert_response :success
  end

  test "should get new" do
    get new_observation_disciplinary_url
    assert_response :success
  end

  test "should create observation_disciplinary" do
    assert_difference("ObservationDisciplinary.count") do
      post observation_disciplinaries_url, params: { observation_disciplinary: { data: @observation_disciplinary.data, observation: @observation_disciplinary.observation } }
    end

    assert_redirected_to observation_disciplinary_url(ObservationDisciplinary.last)
  end

  test "should show observation_disciplinary" do
    get observation_disciplinary_url(@observation_disciplinary)
    assert_response :success
  end

  test "should get edit" do
    get edit_observation_disciplinary_url(@observation_disciplinary)
    assert_response :success
  end

  test "should update observation_disciplinary" do
    patch observation_disciplinary_url(@observation_disciplinary), params: { observation_disciplinary: { data: @observation_disciplinary.data, observation: @observation_disciplinary.observation } }
    assert_redirected_to observation_disciplinary_url(@observation_disciplinary)
  end

  test "should destroy observation_disciplinary" do
    assert_difference("ObservationDisciplinary.count", -1) do
      delete observation_disciplinary_url(@observation_disciplinary)
    end

    assert_redirected_to observation_disciplinaries_url
  end
end
