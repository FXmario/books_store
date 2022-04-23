require "test_helper"

class CashiersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @cashier = cashiers(:fuica)
  end

  test "login with valid username/invalid password" do 
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { username: @cashier.username, password: "invalid" } }
    assert_not is_logged_in?
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert_not flash.empty?
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { username: @cashier.username, password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @cashier
    follow_redirect!
    assert_template 'cashiers/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", cashier_path(@cashier)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to login_path
    follow_redirect!
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", cashier_path(@cashier), count: 0
  end
end
