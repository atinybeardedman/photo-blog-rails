require "test_helper"

class PhotoPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_post = photo_posts(:one)
  end

  test "should get index" do
    get photo_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_post_url
    assert_response :success
  end

  test "should create photo_post" do
    assert_difference("PhotoPost.count") do
      post photo_posts_url, params: { photo_post: {  } }
    end

    assert_redirected_to photo_post_url(PhotoPost.last)
  end

  test "should show photo_post" do
    get photo_post_url(@photo_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_post_url(@photo_post)
    assert_response :success
  end

  test "should update photo_post" do
    patch photo_post_url(@photo_post), params: { photo_post: {  } }
    assert_redirected_to photo_post_url(@photo_post)
  end

  test "should destroy photo_post" do
    assert_difference("PhotoPost.count", -1) do
      delete photo_post_url(@photo_post)
    end

    assert_redirected_to photo_posts_url
  end
end
