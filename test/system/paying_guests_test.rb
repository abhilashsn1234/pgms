require "application_system_test_case"

class PayingGuestsTest < ApplicationSystemTestCase
  setup do
    @paying_guest = paying_guests(:one)
  end

  test "visiting the index" do
    visit paying_guests_url
    assert_selector "h1", text: "Paying guests"
  end

  test "should create paying guest" do
    visit paying_guests_url
    click_on "New paying guest"

    fill_in "Address", with: @paying_guest.address
    fill_in "Paying guest", with: @paying_guest.paying_guest
    click_on "Create Paying guest"

    assert_text "Paying guest was successfully created"
    click_on "Back"
  end

  test "should update Paying guest" do
    visit paying_guest_url(@paying_guest)
    click_on "Edit this paying guest", match: :first

    fill_in "Address", with: @paying_guest.address
    fill_in "Paying guest", with: @paying_guest.paying_guest
    click_on "Update Paying guest"

    assert_text "Paying guest was successfully updated"
    click_on "Back"
  end

  test "should destroy Paying guest" do
    visit paying_guest_url(@paying_guest)
    click_on "Destroy this paying guest", match: :first

    assert_text "Paying guest was successfully destroyed"
  end
end
