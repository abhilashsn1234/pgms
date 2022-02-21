require "test_helper"

class PayingGuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paying_guest = paying_guests(:one)
  end

  test "should get index" do
    get paying_guests_url
    assert_response :success
  end

  test "should get new" do
    get new_paying_guest_url
    assert_response :success
  end

  test "should create paying_guest" do
    assert_difference("PayingGuest.count") do
      post paying_guests_url, params: { paying_guest: { address: @paying_guest.address, paying_guest: @paying_guest.paying_guest } }
    end

    assert_redirected_to paying_guest_url(PayingGuest.last)
  end

  test "should show paying_guest" do
    get paying_guest_url(@paying_guest)
    assert_response :success
  end

  test "should get edit" do
    get edit_paying_guest_url(@paying_guest)
    assert_response :success
  end

  test "should update paying_guest" do
    patch paying_guest_url(@paying_guest), params: { paying_guest: { address: @paying_guest.address, paying_guest: @paying_guest.paying_guest } }
    assert_redirected_to paying_guest_url(@paying_guest)
  end

  test "should destroy paying_guest" do
    assert_difference("PayingGuest.count", -1) do
      delete paying_guest_url(@paying_guest)
    end

    assert_redirected_to paying_guests_url
  end
end
