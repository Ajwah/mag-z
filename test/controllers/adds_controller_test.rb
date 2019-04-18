require 'test_helper'

class AddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magazine = magazines(:one)
    @add = adds(:one)
  end

  test "should get index" do
    get magazine_adds_url(@magazine)
    assert_response :success
  end

  test "should get new" do
    get new_magazine_add_url(@magazine)
    assert_response :success
  end

  test "should create add" do
    assert_difference('Add.count') do
      post magazine_adds_url(@magazine), params: { add: { brand: @add.brand, content: @add.content, magazine_id: @add.magazine_id } }
    end

    assert_redirected_to magazine_add_url(@magazine, Add.last)
  end

  test "should show add" do
    get magazine_add_url(@magazine, @add)
    assert_response :success
  end

  test "should get edit" do
    get edit_magazine_add_url(@magazine, @add)
    assert_response :success
  end

  test "should update add" do
    patch magazine_add_url(@magazine, @add), params: { add: { brand: @add.brand, content: @add.content, magazine_id: @add.magazine_id } }
    assert_redirected_to magazine_add_url(@magazine, @add)
  end

  test "should destroy add" do
    assert_difference('Add.count', -1) do
      delete magazine_add_url(@magazine, @add)
    end

    assert_redirected_to magazine_adds_url(@magazine)
  end
end
