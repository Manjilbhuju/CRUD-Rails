require "application_system_test_case"

class PandasTest < ApplicationSystemTestCase
  setup do
    @panda = pandas(:one)
  end

  test "visiting the index" do
    visit pandas_url
    assert_selector "h1", text: "Pandas"
  end

  test "should create panda" do
    visit pandas_url
    click_on "New panda"

    fill_in "Email", with: @panda.email
    fill_in "First name", with: @panda.first_name
    fill_in "Group", with: @panda.group
    fill_in "Last name", with: @panda.last_name
    click_on "Create Panda"

    assert_text "Panda was successfully created"
    click_on "Back"
  end

  test "should update Panda" do
    visit panda_url(@panda)
    click_on "Edit this panda", match: :first

    fill_in "Email", with: @panda.email
    fill_in "First name", with: @panda.first_name
    fill_in "Group", with: @panda.group
    fill_in "Last name", with: @panda.last_name
    click_on "Update Panda"

    assert_text "Panda was successfully updated"
    click_on "Back"
  end

  test "should destroy Panda" do
    visit panda_url(@panda)
    click_on "Destroy this panda", match: :first

    assert_text "Panda was successfully destroyed"
  end
end
