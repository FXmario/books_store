require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | Books Store"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Books Store"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Books Store"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Books Store"
  end
end
