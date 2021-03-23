require "application_system_test_case"

class SimpleFilesTest < ApplicationSystemTestCase
  setup do
    @simple_file = simple_files(:one)
  end

  test "visiting the index" do
    visit simple_files_url
    assert_selector "h1", text: "Simple Files"
  end

  test "creating a Simple file" do
    visit simple_files_url
    click_on "New Simple File"

    fill_in "Category", with: @simple_file.category
    fill_in "Desc", with: @simple_file.desc
    fill_in "Name", with: @simple_file.name
    click_on "Create Simple file"

    assert_text "Simple file was successfully created"
    click_on "Back"
  end

  test "updating a Simple file" do
    visit simple_files_url
    click_on "Edit", match: :first

    fill_in "Category", with: @simple_file.category
    fill_in "Desc", with: @simple_file.desc
    fill_in "Name", with: @simple_file.name
    click_on "Update Simple file"

    assert_text "Simple file was successfully updated"
    click_on "Back"
  end

  test "destroying a Simple file" do
    visit simple_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simple file was successfully destroyed"
  end
end
