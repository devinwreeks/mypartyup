require "test_helper"

class EventPartnershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_partnership = event_partnerships(:one)
  end

  test "should get index" do
    get event_partnerships_url
    assert_response :success
  end

  test "should get new" do
    get new_event_partnership_url
    assert_response :success
  end

  test "should create event_partnership" do
    assert_difference("EventPartnership.count") do
      post event_partnerships_url, params: { event_partnership: { event_id: @event_partnership.event_id, partnership_id: @event_partnership.partnership_id } }
    end

    assert_redirected_to event_partnership_url(EventPartnership.last)
  end

  test "should show event_partnership" do
    get event_partnership_url(@event_partnership)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_partnership_url(@event_partnership)
    assert_response :success
  end

  test "should update event_partnership" do
    patch event_partnership_url(@event_partnership), params: { event_partnership: { event_id: @event_partnership.event_id, partnership_id: @event_partnership.partnership_id } }
    assert_redirected_to event_partnership_url(@event_partnership)
  end

  test "should destroy event_partnership" do
    assert_difference("EventPartnership.count", -1) do
      delete event_partnership_url(@event_partnership)
    end

    assert_redirected_to event_partnerships_url
  end
end
