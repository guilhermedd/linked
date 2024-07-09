require "test_helper"

class LinkItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @link_item = link_items(:one)
  end

  test "should get index" do
    get link_items_url
    assert_response :success
  end

  test "should get new" do
    get new_link_item_url
    assert_response :success
  end

  test "should create link_item" do
    assert_difference("LinkItem.count") do
      post link_items_url, params: { link_item: { icon: @link_item.icon, name: @link_item.name, url: @link_item.url } }
    end

    assert_redirected_to link_item_url(LinkItem.last)
  end

  test "should show link_item" do
    get link_item_url(@link_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_item_url(@link_item)
    assert_response :success
  end

  test "should update link_item" do
    patch link_item_url(@link_item), params: { link_item: { icon: @link_item.icon, name: @link_item.name, url: @link_item.url } }
    assert_redirected_to link_item_url(@link_item)
  end

  test "should destroy link_item" do
    assert_difference("LinkItem.count", -1) do
      delete link_item_url(@link_item)
    end

    assert_redirected_to link_items_url
  end
end
