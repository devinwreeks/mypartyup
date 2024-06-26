require "application_system_test_case"

class PartnershipsTest < ApplicationSystemTestCase
  setup do
    @partnership = partnerships(:one)
  end

  test "visiting the index" do
    visit partnerships_url
    assert_selector "h1", text: "Partnerships"
  end

  test "should create partnership" do
    visit partnerships_url
    click_on "New partnership"

    fill_in "Contractdetails", with: @partnership.contractDetails
    fill_in "Discountrate", with: @partnership.discountRate
    fill_in "Name", with: @partnership.name
    fill_in "Phone", with: @partnership.phone
    fill_in "Service category", with: @partnership.service_category
    click_on "Create Partnership"

    assert_text "Partnership was successfully created"
    click_on "Back"
  end

  test "should update Partnership" do
    visit partnership_url(@partnership)
    click_on "Edit this partnership", match: :first

    fill_in "Contractdetails", with: @partnership.contractDetails
    fill_in "Discountrate", with: @partnership.discountRate
    fill_in "Name", with: @partnership.name
    fill_in "Phone", with: @partnership.phone
    fill_in "Service category", with: @partnership.service_category
    click_on "Update Partnership"

    assert_text "Partnership was successfully updated"
    click_on "Back"
  end

  test "should destroy Partnership" do
    visit partnership_url(@partnership)
    click_on "Destroy this partnership", match: :first

    assert_text "Partnership was successfully destroyed"
  end
end
