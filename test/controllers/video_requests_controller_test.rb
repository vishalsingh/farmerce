require 'test_helper'

class VideoRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_request = video_requests(:one)
  end

  test "should get index" do
    get video_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_video_request_url
    assert_response :success
  end

  test "should create video_request" do
    assert_difference('VideoRequest.count') do
      post video_requests_url, params: { video_request: { description: @video_request.description } }
    end

    assert_redirected_to video_request_url(VideoRequest.last)
  end

  test "should show video_request" do
    get video_request_url(@video_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_request_url(@video_request)
    assert_response :success
  end

  test "should update video_request" do
    patch video_request_url(@video_request), params: { video_request: { description: @video_request.description } }
    assert_redirected_to video_request_url(@video_request)
  end

  test "should destroy video_request" do
    assert_difference('VideoRequest.count', -1) do
      delete video_request_url(@video_request)
    end

    assert_redirected_to video_requests_url
  end
end
