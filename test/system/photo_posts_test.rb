require "application_system_test_case"

class PhotoPostsTest < ApplicationSystemTestCase
  setup do
    @photo_post = photo_posts(:one)
  end

  test "visiting the index" do
    visit photo_posts_url
    assert_selector "h1", text: "Photo posts"
  end

  test "should create photo post" do
    visit photo_posts_url
    click_on "New photo post"

    click_on "Create Photo post"

    assert_text "Photo post was successfully created"
    click_on "Back"
  end

  test "should update Photo post" do
    visit photo_post_url(@photo_post)
    click_on "Edit this photo post", match: :first

    click_on "Update Photo post"

    assert_text "Photo post was successfully updated"
    click_on "Back"
  end

  test "should destroy Photo post" do
    visit photo_post_url(@photo_post)
    click_on "Destroy this photo post", match: :first

    assert_text "Photo post was successfully destroyed"
  end
end
