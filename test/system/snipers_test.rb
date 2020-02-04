require "application_system_test_case"

class SnipersTest < ApplicationSystemTestCase
  setup do
    @sniper = snipers(:one)
  end

  test "visiting the index" do
    visit snipers_url
    assert_selector "h1", text: "Snipers"
  end

  test "creating a Sniper" do
    visit snipers_url
    click_on "New Sniper"

    fill_in "Contents", with: @sniper.contents
    fill_in "Language", with: @sniper.language
    fill_in "Title", with: @sniper.title
    click_on "Create Sniper"

    assert_text "Sniper was successfully created"
    click_on "Back"
  end

  test "updating a Sniper" do
    visit snipers_url
    click_on "Edit", match: :first

    fill_in "Contents", with: @sniper.contents
    fill_in "Language", with: @sniper.language
    fill_in "Title", with: @sniper.title
    click_on "Update Sniper"

    assert_text "Sniper was successfully updated"
    click_on "Back"
  end

  test "destroying a Sniper" do
    visit snipers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sniper was successfully destroyed"
  end
end
