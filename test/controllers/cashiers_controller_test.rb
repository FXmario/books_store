require "test_helper"

class CashiersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @cashier = cashiers(:fuica)
  end

  test "should redirect new when not logged in" do
    get cashier_path(@cashier)
    assert_not flash.empty?
    assert_redirected_to login_path
  end
end
