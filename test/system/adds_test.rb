require "application_system_test_case"

class AddsTest < ApplicationSystemTestCase
  setup do
    @add = adds(:one)
  end

  test "visiting the index" do
    visit adds_url
    assert_selector "h1", text: "Adds"
  end

  test "creating a Add" do
    visit adds_url
    click_on "New Add"

    fill_in "Adds", with: @add.Adds
    fill_in "Brand", with: @add.brand
    fill_in "Content", with: @add.content
    fill_in "Magazine", with: @add.magazine_id
    click_on "Create Add"

    assert_text "Add was successfully created"
    click_on "Back"
  end

  test "updating a Add" do
    visit adds_url
    click_on "Edit", match: :first

    fill_in "Adds", with: @add.Adds
    fill_in "Brand", with: @add.brand
    fill_in "Content", with: @add.content
    fill_in "Magazine", with: @add.magazine_id
    click_on "Update Add"

    assert_text "Add was successfully updated"
    click_on "Back"
  end

  test "destroying a Add" do
    visit adds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add was successfully destroyed"
  end
end
