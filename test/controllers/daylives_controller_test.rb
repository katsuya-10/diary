require 'test_helper'

class DaylivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daylife = daylives(:one)
  end

  test "should get index" do
    get daylives_url
    assert_response :success
  end

  test "should get new" do
    get new_daylife_url
    assert_response :success
  end

  test "should create daylife" do
    assert_difference('Daylife.count') do
      post daylives_url, params: { daylife: { body: @daylife.body, title: @daylife.title } }
    end

    assert_redirected_to daylife_url(Daylife.last)
  end

  test "should show daylife" do
    get daylife_url(@daylife)
    assert_response :success
  end

  test "should get edit" do
    get edit_daylife_url(@daylife)
    assert_response :success
  end

  test "should update daylife" do
    patch daylife_url(@daylife), params: { daylife: { body: @daylife.body, title: @daylife.title } }
    assert_redirected_to daylife_url(@daylife)
  end

  test "should destroy daylife" do
    assert_difference('Daylife.count', -1) do
      delete daylife_url(@daylife)
    end

    assert_redirected_to daylives_url
  end
end
