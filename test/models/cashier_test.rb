require "test_helper"

class CashierTest < ActiveSupport::TestCase
  def setup
    @cashier = Cashier.new(name: "Example Name", username: "Example Username", password: "fuuica1")
  end

  test "should be valid" do
    assert @cashier.valid?
  end

  test "name should be present" do 
    @cashier.name = " "
    assert_not @cashier.valid?
  end

  test "username should be present" do 
    @cashier.username = " "
    assert_not @cashier.valid?
  end

  test "name should not be too long" do 
    @cashier.name = "a" * 51
    assert_not @cashier.valid?
  end

  test "username should not be too long" do 
    @cashier.username = "a" * 51
    assert_not @cashier.valid?
  end

  test "username should be unique" do 
    duplicate_cashier = @cashier.dup
    @cashier.save
    assert duplicate_cashier.valid?
  end

  test "username should be saved as lowercase" do 
    mixed_case_username = "uSeRnAmE"
    @cashier.username = mixed_case_username
    @cashier.save
    assert_equal mixed_case_username.downcase, @cashier.reload.username
  end

  test "password should be present (nonblank)" do 
    @cashier.password = @cashier.password_confirmation = " " * 6
    assert_not @cashier.valid?
  end

  test "password should have a minimum length" do 
    @cashier.password = @cashier.password_confirmation = "a" * 5
    assert_not @cashier.valid?
  end
end
