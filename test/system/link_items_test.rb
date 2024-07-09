require "application_system_test_case"

class LinkItemsTest < ApplicationSystemTestCase
  setup do
    @link_item = link_items(:one)
  end

  test "visiting the index" do
    visit link_items_url
    assert_selector "h1", text: "Link items"
  end

  test "should create link item" do
    visit link_items_url
    click_on "New link item"

    fill_in "Icon", with: @link_item.icon
    fill_in "Name", with: @link_item.name
    fill_in "Url", with: @link_item.url
    click_on "Create Link item"

    assert_text "Link item was successfully created"
    click_on "Back"
  end

  test "should update Link item" do
    visit link_item_url(@link_item)
    click_on "Edit this link item", match: :first

    fill_in "Icon", with: @link_item.icon
    fill_in "Name", with: @link_item.name
    fill_in "Url", with: @link_item.url
    click_on "Update Link item"

    assert_text "Link item was successfully updated"
    click_on "Back"
  end

  test "should destroy Link item" do
    visit link_item_url(@link_item)
    click_on "Destroy this link item", match: :first

    assert_text "Link item was successfully destroyed"
  end
end
