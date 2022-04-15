require "application_system_test_case"

class DistributorsTest < ApplicationSystemTestCase
  setup do
    @distributor = distributors(:one)
  end

  test "visiting the index" do
    visit distributors_url
    assert_selector "h1", text: "Distributors"
  end

  test "should create distributor" do
    visit distributors_url
    click_on "New distributor"

    fill_in "Address", with: @distributor.address
    fill_in "Distributor name", with: @distributor.distributor_name
    fill_in "Telephone", with: @distributor.telephone
    click_on "Create Distributor"

    assert_text "Distributor was successfully created"
    click_on "Back"
  end

  test "should update Distributor" do
    visit distributor_url(@distributor)
    click_on "Edit this distributor", match: :first

    fill_in "Address", with: @distributor.address
    fill_in "Distributor name", with: @distributor.distributor_name
    fill_in "Telephone", with: @distributor.telephone
    click_on "Update Distributor"

    assert_text "Distributor was successfully updated"
    click_on "Back"
  end

  test "should destroy Distributor" do
    visit distributor_url(@distributor)
    click_on "Destroy this distributor", match: :first

    assert_text "Distributor was successfully destroyed"
  end
end
