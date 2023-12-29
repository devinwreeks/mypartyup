require "application_system_test_case"

class EventPartnershipsTest < ApplicationSystemTestCase
  setup do
    @event_partnership = event_partnerships(:one)
  end

  test "visiting the index" do
    visit event_partnerships_url
    assert_selector "h1", text: "Event partnerships"
  end

  test "should create event partnership" do
    visit event_partnerships_url
    click_on "New event partnership"

    fill_in "Event", with: @event_partnership.event_id
    fill_in "Partnership", with: @event_partnership.partnership_id
    click_on "Create Event partnership"

    assert_text "Event partnership was successfully created"
    click_on "Back"
  end

  test "should update Event partnership" do
    visit event_partnership_url(@event_partnership)
    click_on "Edit this event partnership", match: :first

    fill_in "Event", with: @event_partnership.event_id
    fill_in "Partnership", with: @event_partnership.partnership_id
    click_on "Update Event partnership"

    assert_text "Event partnership was successfully updated"
    click_on "Back"
  end

  test "should destroy Event partnership" do
    visit event_partnership_url(@event_partnership)
    click_on "Destroy this event partnership", match: :first

    assert_text "Event partnership was successfully destroyed"
  end
end
