require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @cashier = cashiers(:fuica)
  end

  test "should redirect home when not logged in" do
    get cashier_path(@cashier)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  # test "should get home" do 
  #   get cashier_path(@cashier)
  #   assert flash.empty?
  #   assert_redirected_to root_path
  #   assert_response :success
  #   assert_select "title", "Home | Books Store"
  # end

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
